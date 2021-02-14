local games = {}

table.insert(games, {
    title = "Roulette",
    file = "game_Roulette.lua",
    available = true,
    image = "game_Roulette.pic",
    author = "krovyaka",
    description = "Руле́тка — азартная игра (слово рулетка (roulette)\n" ..
            "происходит от французского слова «ру» в переводе с\n" ..
            "французского означает «колесо, ролик, бегунок»). Рулетка\n" ..
            "впервые появилась во Франции. Она называлась «хока» и в\n" ..
            "ней было 40 пронумерованных гнёзд и три были помечены\n" ..
            "«зеро». Во времена короля Луи XIV, кардинал Мазарини,\n" ..
            "чтобы пополнить казну, повсеместно разрешил во Франции\n" ..
            "открывать казино. После смерти Мазарини в 1661 году вышел\n" ..
            "указ, гласивший, что всякий, кто осмелится открыть казино\n" ..
            "для игры в хока, будет казнен.\n \n" ..
            "Перед игрой убедитесь, что у Вас будет достаточно\n" ..
            "места для получения выигрыша, а также, что сумма выигрыша\n" ..
            "не превысит количество валюты на счету казино."
})

table.insert(games, {
    title = "Blackjack",
    file = "game_Blackjack.lua",
    available = true,
    image = "game_Blackjack.pic",
    author = "Durex77",
    description = "Блэкджек (англ. Blackjack «чёрный валет») — одна из самых\n" ..
            "популярных карточных игр в казино по всему миру. Большая\n" ..
            "популярность игры обуславливается простыми правилами,\n" ..
            "скоростью игры и наиболее простой стратегией в подсчёте\n" ..
            "карт. Тем не менее популярность игра завоевала не сразу.\n" ..
            "Игорным домам Соединённых Штатов приходилось\n" ..
            "стимулировать интерес к игре различными видами бонусов и\n" ..
            "выработкой нескольких разновидностей правил для\n" ..
            "блек-джека. Считается, что предшественником этой игры\n" ..
            "была карточная игра «vingt-et-un» («двадцать один»),\n" ..
            "которая появилась во французских игорных заведениях\n" ..
            "приблизительно в XIX веке. В России, например, блек-джек\n" ..
            "по сей день часто называют двадцать одно или очко (но у\n" ..
            "традиционной игры очко несколько отличаются правила).\n \n" ..
            "Перед игрой убедитесь, что у Вас будет достаточно\n" ..
            "места для получения выигрыша, а также, что сумма выигрыша\n" ..
            "не превысит количество валюты на счету казино."
})

table.insert(games, {
    title = "Poker - 5 Card",
    file = "game_Video_poker.lua",
    available = true,
    image = "game_Video_poker.pic",
    author = "Durex77",
    description = "Видеопокер — игра казино, основанная на правилах\n" ..
            "пятикарточного покера с обменом. Игра ведется на\n" ..
            "компьютеризированной консоли с экраном или через интернет\n \n" ..
            "Перед игрой убедитесь, что у Вас будет достаточно\n" ..
            "места для получения выигрыша, а также, что сумма выигрыша\n" ..
            "не превысит количество валюты на счету казино."
})

table.insert(games, {
    title = "Higher or Lower",
    file = "game_More_less.lua",
    available = true,
    image = "game_More_less.pic",
    author = "Durex77",
    description = "Карточная игра казино, суть которой в том, чтобы угадать,\n" ..
            "следующая выпавшая карта больше или меньше текущей.\n" ..
            "Если новая карта равна текущей, тогда данная ситуация\n" ..
            "считается выигрышной. Итоговая сумма выигрыша составляет\n" ..
            "ту, которую заберет игру, вовремя остановившись. Чем\n" ..
            "дальше продвигается игра, тем, соответственно, больше\n" ..
            "коэффициент выигрыша.\n \n" ..
            "Перед игрой убедитесь, что у Вас будет достаточно\n" ..
            "места для получения выигрыша, а также, что сумма выигрыша\n" ..
            "не превысит количество валюты на счету казино."
})

table.insert(games, {
    title = "Minecraft Slots",
    file = "game_One_armed_creeper.lua",
    available = true,
    image = "game_One_armed_creeper.pic",
    author = "krovyaka",
    description = "A classic one line slot machine, Minecraft edition.\n" ..
            "Slot is programmed to have an increased payout over, \n"..
            "regular casino slot machines. In order to get three characters\n"..
            "in a row in order to win. The amount depends on the characters.\n \n" ..
})

table.insert(games, {
    title = "Pick a Chest",
    file = "game_Chests.lua",
    available = true,
    image = "game_Chests.pic",
    author = "krovyaka",
    description = "After starting the game, select a Chest.\n" ..
            "Each Chest contains a random amount of currency.\n" ..
            "You can win anywhere from double your bet to nothing.\n" ..
            "One chest has a small chance to be 10 times your bet.\n"
})

return games
