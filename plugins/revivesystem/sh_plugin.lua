PLUGIN.name = "Revive System"
PLUGIN.author = "Lechu2375"

ix.util.Include("sv_damagehandle.lua")
ix.util.Include("sv_soundemit.lua")
ix.util.Include("cl_screen.lua")
ix.util.Include("sv_plugin.lua")

ix.lang.AddTable("english", {
	reviving = "Reviving",
	beingRevived = "You are being revived.",
})
ix.lang.AddTable("korean", {
	reviving = "일으키는 중",
	beingRevived = "일어나는 중",
})

ix.config.Add("TimeToRevive", 60, "Time in seconds to revive until death.", nil, {
	category = "Revive System",
    data = {min = 1, max = 1000}
})