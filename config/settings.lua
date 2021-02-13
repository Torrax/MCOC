local settings = {}
local sides = require("sides")

settings.REPOSITORY = "https://raw.githubusercontent.com/Torrax/MCOC/master"
settings.TITLE = "Welcome to the Casino"
settings.ADMINS = { "Torrax" }

-- CHEST / PIM / ...
settings.PAYMENT_METHOD = "CHEST"
settings.CONTAINER_PAY = 4   -- BOTTOM = 0     TOP = 1    NORTH = 2   SOUTH = 3  WEST = 4   EAST = 5        
settings.CONTAINER_GAIN = 5  -- BOTTOM = 0     TOP = 1    NORTH = 2   SOUTH = 3  WEST = 4   EAST = 5

return settings;
