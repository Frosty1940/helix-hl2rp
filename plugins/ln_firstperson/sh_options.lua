-- "gamemodes\\ixhl2rp\\plugins\\ln_firstperson\\sh_options.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ix.option.Add("enableImmersiveFirstPerson", ix.type.bool, true, {
    category = "1인칭 시점"
})

ix.option.Add("smoothScale", ix.type.number, 0.7, {
    category = "1인칭 시점",
    min = 0,
    max = 0.9,
    decimals = 1
})

ix.option.Add("customCrosshair", ix.type.bool, true, {
    category = "1인칭 시점"
})
