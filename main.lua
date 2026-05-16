titleTable = {"sys_title.ogg", "sys_title_old.ogg"}
blindTable = {"indust.ogg", "normal02.ogg"}
bossTable = {"blade.ogg", "alive.ogg", "pyrite.ogg"}

blind = blindTable[math.random(#blindTable)]
boss = bossTable[math.random(#bossTable)]

if math.random(1, 100)~=67 then title=titleTable[1] else title=titleTable[2] end
SMODS.Sound({
    pitch = 1,
    key = "music_title_old",
    path = title,
    select_music_track = function()
        return (G.STATE == G.STATES.MENU) and 10
    end, })

SMODS.Sound({
    pitch = 1,
    key = "music_blind",
    path = blind,
    select_music_track = function()
        return (G.GAME and G.GAME.round_resets.ante >= 1) and 0 or false
    end,
})

SMODS.Sound({
    pitch = 1,
    key = "music_shop",
    path = "shop.ogg",
    select_music_track = function()
        return G.GAME and G.shop and 10
    end,
})

SMODS.Sound({
    pitch = 1,
    key = "music_boss",
    path = boss,
    sync = false,
    select_music_track = function()
        return (G.GAME and G.GAME.blind and G.GAME.blind.config.blind.boss) and 1 or false
    end,
})