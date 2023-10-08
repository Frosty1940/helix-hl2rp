-- "gamemodes\\ixhl2rp\\plugins\\ln_firstperson\\sh_plugin.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

PLUGIN.name = "First Person Perspective"
PLUGIN.description = "Adds an immersive 'smooth' first person view."
PLUGIN.author = "Aspect™"

ix.util.Include("sh_options.lua")
ix.util.Include("cl_hooks.lua")

ix.lang.AddTable("english", {
	firstperson = "Firstperson",
	optEnableImmersiveFirstPerson = "Enable Immersive First Person",
	optdEnableImmersiveFirstPerson = "Whether Immersive First Person should be enabled.",

	optSmoothScale = "Smooth Scale",
	optdSmoothScale = "The scale of which the mouse movement will be smoothened.",

	optCustomCrosshair = "Enable Custom Crosshair",
	optdCustomCrosshair = "Whether or not to replace the default crosshair."
})

ix.lang.AddTable("korean", {
	firstperson = "1인칭",
	optEnableImmersiveFirstPerson = "사실적인 1인칭 흔들림",
	optdEnableImmersiveFirstPerson = "사실적인 1인칭 흔들림 사용 여부.",

	optSmoothScale = "부드러움 강도",
	optdSmoothScale = "마우스 움직임의 부드러움 강도.",

	optCustomCrosshair = "사용자 조준점",
	optdCustomCrosshair = "기본 조준점 대체 여부."
})