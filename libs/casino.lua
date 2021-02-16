local settings = require("settings")
local casino = {}
local component = require("component")
local shell = require("shell")
local filesystem = require("filesystem")
local meInterface = component.me_interface

local CURRENCY = {
    name = nil,
    max = nil,
    image = nil,
    id = nil,
    dmg = nil
}

local currentBetSize = 0


casino.container = nil
local containerSize = 0

if settings.PAYMENT_METHOD == 'CHEST' then
    casino.container = component.transposer
    containerSize = casino.container.getInventorySize(settings.CONTAINER_GAIN)
elseif settings.PAYMENT_METHOD == 'PIM' then
    casino.container = component.pim
    containerSize = 40
end

casino.splitString = function(inputStr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputStr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

casino.reward = function(money)
    if not CURRENCY.id then
        return true
    end

    money = math.floor(money + 0.5)
    while money > 0 do
        local executed, g = pcall(function()
            return meInterface.exportItem(CURRENCY, settings.CONTAINER_GAIN, money < 64 and money or 64).size
        end)
        money = money - (money < 64 and money or 64)
    end
end

casino.takeMoney = function(money)
    if not CURRENCY.id then
        return true
    end 

    if CURRENCY.max and currentBetSize + money > CURRENCY.max then
        return false, "Exceeded Maximum"
    end

    local sum = 0
    local item = casino.container.getStackInSlot(settings.CONTAINER_PAY, 1)
    if item then
        if string.match(casino.container.getStackInSlot(settings.CONTAINER_PAY,1).label, CURRENCY.lbl) then
            sum = sum + casino.container.transferItem(settings.CONTAINER_PAY, settings.CONTAINER_GAIN, money - sum, 1)
        end
    end
        
    if sum < money then
        casino.reward(sum)
        return false, "Need to " .. CURRENCY.name .. " x" .. money
    end
    currentBetSize = currentBetSize + money
    return true
end

casino.downloadFile = function(url, saveTo, forceRewrite)
    if forceRewrite or not filesystem.exists(saveTo) then
        shell.execute("wget -fq " .. url .. " " .. saveTo)
    end
end

casino.setCurrency = function(currency)
    CURRENCY = currency
end

casino.getCurrency = function()
    return CURRENCY
end

casino.gameIsOver = function()
    currentBetSize = 0
end

casino.getCurrencyInStorage = function(currency)
    if not currency.id then
        return -1
    end 
    local item = casino.container.getStackInSlot(settings.CONTAINER_PAY, 1)
    if item then
        if string.match(casino.container.getStackInSlot(settings.CONTAINER_PAY,1).label, currency.lbl) then
             return item and item.size or 0
        end
    end
    return 0
end

return casino
