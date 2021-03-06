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

addCurrency("10,000 ©",             "pokerchipz.chip4",    "10,000 Chip",      0,   'COIN',   0x85BB65,   nil)
addCurrency("100,000 ©",            "pokerchipz.chip5",    "100,000 Chip",     0,   'COIN',   0xFF9900,   nil)
addCurrency("1,000,000 ©",          "pokerchipz.chip6",   "1,000,000 Chip",    0,   'COIN',   0x444444,   nil)

return currencies
