local component = require("component")
local ct = component.transposer
local shell = require("shell")
local sides = require("sides")

local storageside = sides.down                                                   -- CHEST LOCATION VARIABLES
local chestside = sides.up


	local counted = 0
	local searchfor = diamonds
	
	if not tonumber(searchfor) then                                       -- Search by item Name
		local i = 0
		for i =1, (ct.getInventorySize(storageside)) do
			local item = ct.getStackInSlot(storageside, i)
 
			if item then
				if string.find(item.name .. "^" .. item.label .. "^", searchfor) then
					print(i .. ": " .. item.name .. " - " .. item.label .. " (" .. item.size .. ")")
					counted = counted + 1 
					slot = i
				end
			end 
		end
	else
		slot = tonumber(searchfor)                                 --Search By Item Number
		counted = 1						   -- Set Counted Flag to True
	end

	if counted == 1 then                                               -- If Chips were found
		ct.transferItem(storageside, chestside, 64, slot)         -- Transfer Chips to Slot (Variable)
	end

                                                                          -- Transfer EVERY ITEM back to other chest
	for i = ct.getInventorySize(chestside), 1, -1 do
		ct.transferItem(chestside, storageside, 64, i)

