blindTable = {"indust.ogg", "normal02.ogg"}
bossTable = {"blade.ogg", "alive.ogg", "pyrite.ogg"}

if math.random(1, 100)~=67 then title="sys_title.ogg" else title="sys_title_old.ogg" end
SMODS.Sound({
    pitch = 1,
    key = "music_title",
    path = title,
    select_music_track = function()
        return (G.STATE == G.STATES.MENU) and 10
    end, })

for i=1,8 do
SMODS.Sound({
    pitch = 1,
    key = 'music_blind_'..i,
    path = blindTable[math.random(#blindTable)],
    sync = true,
    select_music_track = function()
        return (G.GAME and G.GAME.round_resets.ante == i) and 0 or false
    end,
})
end
-- for i=9,39,5 do
-- SMODS.Sound({
--     pitch = 1,
--     key = 'music_blind_'..i,
--     path = blindTable[math.random(#blindTable)],
--     sync = true,
--     select_music_track = function()
--         return (G.GAME and G.GAME.round_resets.ante == i) and 0 or false
--     end,
-- })
-- end

SMODS.Sound({
    pitch = 1,
    key = "music_shop",
    path = "shop.ogg",
    select_music_track = function()
        return G.GAME and G.shop and 10
    end,
})
for i=1,39 do
SMODS.Sound({
    pitch = 1,
    key = "music_boss_"..i,
    path = bossTable[math.random(#bossTable)],
    sync = false,
    select_music_track = function()
        return (G.GAME and G.GAME.blind) and (G.GAME.round_resets.ante == i and G.GAME.blind.config.blind.boss) and 1 or false
    end,
}) end