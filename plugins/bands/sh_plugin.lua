
PLUGIN.name = "Bands"
PLUGIN.description = "New wristbands for citizens, which, after wearing them, display the appropriate text under the nickname."
PLUGIN.author = "lechu2375"


ix.util.Include("cl_hooks.lua")

ix.lang.AddTable("english", {
	itemCWUBandLabel = "Civil Woker's Union",
	itemCWUBandDesc = "A wristband of the Civil Woker's Union.",
})

ix.lang.AddTable("korean", {
	["CWU Wristband"] = "CWU 완장",
	itemCWUBandLabel = "시민 노동 조합",
	itemCWUBandDesc = "시민 노동 조합 완장입니다.",
})

function PLUGIN:PrePlayerLoadedCharacter( client, character, currentChar )

	if client:GetNW2String( "band" ) then client:SetNW2String( "band", nil ) end

	for k, v in pairs( character:GetInventory():GetItems() ) do

		if not v.band or not v:GetData( "equip", false ) then continue end

		client:SetNW2String( "band", v.band )

		break

	end

end