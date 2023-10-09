local PLUGIN = PLUGIN

PLUGIN.name = "Clockwork Features"
PLUGIN.author = "Ronald / Clockwork DEV Team"
PLUGIN.desc = "Some good features from Clockwork."

ix.util.Include("sv_plugin.lua")
ix.util.Include("cl_plugin.lua")
ix.util.Include("sh_commands.lua")

ix.lang.AddTable("english", {
	decalsCleared = "%s cleared all decals."
})

ix.lang.AddTable("korean", {
	decalsCleared = "%s(이)가 모든 데칼을 지웠습니다."
})