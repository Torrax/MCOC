local component = require("component")
local unicode = require("unicode")
local term = require("term")
local gpu = component.gpu

local COLORS = {
    ["0"] = 0x000000, ["1"] = 0x0000AA, ["2"] = 0x00AA00, ["3"] = 0x00AAAA,
    ["4"] = 0xAA0000, ["5"] = 0xAA00AA, ["6"] = 0xAAAA00, ["7"] = 0xAAAAAA,
    ["8"] = 0x505050, ["9"] = 0x5050FF, ["a"] = 0x50FF50, ["b"] = 0x50FFFF,
    ["c"] = 0xFF5050, ["d"] = 0xFF50FF, ["e"] = 0xFFFF50, ["f"] = 0xFFFFFF
}

local function formattedText(x, y, text)
    local textLen = unicode.len(text)
    local line = 0
    local left = 0
    local color = "f"
    local i = 0
    gpu.setForeground(COLORS[color])
    while i < textLen do
        i = i + 1
        local char = unicode.sub(text, i, i)
        local colorCode = char == "&" and unicode.sub(text, i + 1, i + 1)
        if COLORS[colorCode] then
            color = colorCode
            i = i + 1
            gpu.setForeground(COLORS[color])
        elseif char == "\n" then
            line = line + 1
            left = 0
        else
            gpu.set(x + left, y + line, char)
            left = left + 1
        end
    end
end

local howToPlay = [[
&aHow to play?
 &f1. Right click screen to assume fullscrren mode.
 2. Select your perfered game from the list.
 3. Place your chips in the chest and begin playing!

&aHow do you choose a currency?
 &fIn the main menu, the current currency is displayed at the bottom. 
 Simply drop your selected chips in the chest to select your currency.
         PLEASE ONLY PUT ONE TYPE OF CHIP IN AT A TIME
]]

gpu.setResolution(100, 25)
gpu.setBackground(0)
term.clear()
formattedText(6, 3, howToPlay)
os.sleep(math.huge)
