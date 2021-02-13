local REPOSITOTY = "https://raw.githubusercontent.com/Torrax/MCOC/master"

local shell = require("shell")
shell.execute("wget -fq " .. REPOSITOTY .. "/apps/game_Video_poker.lua /home/apps/game_Video_poker.lua")
shell.execute("wget -fq " .. REPOSITOTY .. "/apps/game_Blackjack.lua /home/apps/game_Blackjack.lua")
shell.execute("wget -fq " .. REPOSITOTY .. "/apps/game_Chests.lua /home/apps/game_Chests.lua")
shell.execute("wget -fq " .. REPOSITOTY .. "/apps/game_Video_poker.lua /home/apps/game_More_less.lua")
shell.execute("wget -fq " .. REPOSITOTY .. "/apps/game_Blackjack.lua /home/apps/game_One_armed_creeper.lua")
shell.execute("wget -fq " .. REPOSITOTY .. "/apps/game_Chests.lua /home/apps/game_Roulette.lua")
