
PLUGIN.name = "Flashlight item"
PLUGIN.author = "SleepyMode"
PLUGIN.description = "Adds an item allowing players to toggle their flashlight."

function PLUGIN:PlayerSwitchFlashlight(client, bEnabled)
	local character = client:GetCharacter()
	local inventory = character and character:GetInventory()

	if ((inventory and inventory:HasItem("flashlight")) or client:IsCombine()) then
		return true
	end
end

ix.lang.AddTable("english", {
	itemFlashlightDesc = "A standard flashlight that can be toggled.",
})

ix.lang.AddTable("korean", {
	["Flashlight"] = "손전등",
	itemFlashlightDesc = "켜고 끌 수 있는 평범한 손전등입니다.",
})