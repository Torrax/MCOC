local currencies = {}

local function addCurrency(name, id, dmg, model, color, max)
    table.insert(currencies, {
        name = name,
        id = id,
        dmg = dmg,
        model = model,
        color = color,
    })
end

addCurrency("Chips",           "customnpcs:npcMoney",      0,   'INGOT', 0x85BB65, nil)
addCurrency("Glowstone",        "minecraft:glowstone_dust", 0,   'DUST',  0xD0D000, 5)
addCurrency("Nothing",        nil,                        nil, nil,     0xE5E5E5, nil)

return currencies
