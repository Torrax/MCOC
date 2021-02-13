local component = require("component")
local shell = require("shell")
local sides = require("sides")

local outputChest = sides.west                             -- CHEST LOCATION VARIABLES
local bankChest = sides.east                               -- sides.up, sides.down, sides.north, sides.south, sides.east, sides.west

local counted = 0
local searchfor = "1,000G"
local winAmount = 4

local i = 0
for i = 1, (component.transposer.getInventorySize(bankChest)) do
    local item = component.transposer.getStackInSlot(bankChest, i)

    if item then
        if string.match(component.transposer.getStackInSlot(bankChest,1).label, searchfor) then
            print(i .. ": " .. item.name .. " - " .. item.label .. " (" .. item.size .. ")")
            counted = counted + 1
            slot = i
        end
    end
end

if counted == 1 then                                                               -- If Chips were found
    component.transposer.transferItem(bankChest, outputChest, winAmount, 1)        -- Transfer Chips to Slot (Variable)
end

                                                                  -- Transfer EVERY ITEM back to other chest
--  for i = ct.getInventorySize(bankChest), 1, -1 do
--      ct.transferItem(outputChest, bankChest, 64, i)
--  end
