local currencies = {}

local function addCurrency(name, id, lbl, dmg, model, color, max)
    table.insert(currencies, {
        name = name,
        id = id,
        lbl = lbl,
        dmg = dmg,
        model = model,
        color = color,
    })
end

addCurrency("Nothing",               nil,               nil,       nil,    nil,     0xE5E5E5,   nil)
addCurrency("10 ©",                "coins.coin",        "10G",        0,   'INGOT',   0x85BB65,   nil)
addCurrency("100 ©",                "coins.coin",       "100G",       0,   'DUST',   0x85BB65,   nil)
addCurrency("1,000 ©",              "coins.coin",       "1,000G",     0,   'BLOCK',   0x85BB65,   nil)
addCurrency("10,000 ©",             "coins.coin",      "10,000G",     0,   'INGOT',   0x85BB65,   nil)
addCurrency("100,000 ©",            "coins.coin",      "100,000G",    0,   'INGOT',   0x85BB65,   nil)
addCurrency("1,000,000 ©",          "coins.coin",     "1,000,000G",   0,   'INGOT',   0x85BB65,   nil)

return currencies
