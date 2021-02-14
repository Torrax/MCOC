local currencies = {}

local function addCurrency(name, id, lbl, dmg, model, color, max)
    table.insert(currencies, {
        name = name,
        id = id,
        lbl = lbl
        dmg = dmg,
        model = model,
        color = color,
    })
end

addCurrency("Nothing",             nil,             nil,         nil,    nil,   0xE5E5E5, nil)
addCurrency("Chips",           "coins.coin",      "1,000G",       0,   'INGOT', 0x85BB65, nil)

return currencies
