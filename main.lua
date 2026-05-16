SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "music_story1",
    path = "sys_title.ogg",
    select_music_track = function()
        return (G.STATE == G.STATES.MENU) and 10 or false
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "music_shop",
    path = "shop.ogg",
    select_music_track = function()
        return G.GAME
        and (G.GAME and G.shop)
        and 10
    end,
})