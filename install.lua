local REPOSITOTY = "https://raw.githubusercontent.com/Torrax/MCOC/master"

local shell = require("shell")
shell.execute("wget -fq " .. REPOSITOTY .. "/launcher.lua /autorun.lua")
shell.execute("wget -fq " .. REPOSITOTY .. "/libs/casino.lua /lib/casino.lua")
shell.execute("wget -fq " .. REPOSITOTY .. "/config/settings.lua /lib/settings.lua")
shell.execute("edit /lib/settings.lua")
shell.execute("/autorun.lua")
