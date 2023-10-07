-- "gamemodes\\ixhl2rp\\plugins\\credits\\sh_plugin.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
local ix = ix
local CAMI = CAMI
local netstream = netstream
local pairs = pairs
local player = player


local PLUGIN = PLUGIN

PLUGIN.name = "Nice display plugin"
PLUGIN.author = "Unknown"
PLUGIN.description = "Display some cool stuff"
PLUGIN.creditsMembers = PLUGIN.creditsMembers or {}

ix.util.Include("sv_plugin.lua")
ix.util.Include("cl_plugin.lua")

CAMI.RegisterPrivilege({
	Name = "Helix - Manage Event Credits",
	MinAccess = "admin"
})

ix.command.Add("EditCredits", {
	description = "Edit the event credits.",
	privilege = "Manage Event Credits",
	OnRun = function(self, client)
		netstream.Start(client, "EditEventCredits", PLUGIN.creditsMembers)
	end
})

ix.command.Add("EventIntro", {
	description = "Showcase the event intro.",
	privilege = "Manage Event Credits",
	OnRun = function(self, client)
		for _, v in pairs(player.GetAll()) do
			netstream.Start(v, "ShowcaseEventCredits", PLUGIN.creditsMembers)
		end
		timer.Create("ixEventCreditsStart", 3.5, 1, function()
			client:EmitSound("helmwatch/patient_zero.mp3")
		end)		
	end
})

ix.command.Add("EventCredits", {
	description = "Showcase the event credits.",
	privilege = "Manage Event Credits",
	OnRun = function(self, client)
		for _, v in pairs(player.GetAll()) do
			netstream.Start(v, "ShowcaseEventCredits", PLUGIN.creditsMembers, true)
		end
		client:EmitSound("awhl2rp/ambient/hpr_ow.mp3")					
	end
})

ix.config.Add("eventCreditsImageW", 1, "The width of the event credits title image.", nil, {
	data = {min = 1, max = 3000},
	category = "Event Credits"
})

ix.config.Add("eventCreditsImageH", 1, "The height of the event credits title image.", nil, {
	data = {min = 1, max = 3000},
	category = "Event Credits"
})

ix.config.Add("eventCreditsImageURL", "URL", "The URL of the event credits title image.", nil, {
	category = "Event Credits"
})

ix.config.Add("eventCreditsImageShownTimer", 5, "The amount of time the title image is shown.", nil, {
	data = {min = 1, max = 10},
	category = "Event Credits"
})

ix.config.Add("eventCreditsSpeedOfRoller", 60, "The amount of time it takes for the credits to reach the top in seconds.", nil, {
	data = {min = 1, max = 1000},
	category = "Event Credits"
})