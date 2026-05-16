if math.random(0, 100) ~= 67 then SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "music_title",
    path = "sys_title.ogg",
    select_music_track = function()
        return ((G.STATE == G.STATES.MENU) and 10)
    end, })
else SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "music_title_old",
    path = "sys_title_old.ogg",
    select_music_track = function()
        return (G.STATE == G.STATES.MENU) and 10
    end, })
end

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "music_shop",
    path = "shop.ogg",
    select_music_track = function()
        return G.GAME and G.shop and 10
    end,
})