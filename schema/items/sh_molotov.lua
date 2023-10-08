ITEM.name = "Molotov"
ITEM.description = "itemMolotovDesc"
ITEM.category = "Weapons"
ITEM.model = "models/weapons/anya/w_molly.mdl"
ITEM.class = "weapon_molotov"
ITEM.ammoamount = 1
ITEM.ammotype = "molotov"
ITEM.classes = {CLASS_REBEL}
ITEM.width = 1
ITEM.height = 1
ITEM.price = 45
ITEM.factions = {FACTION_CONSCRIPT}

ITEM.functions.Equip = {
	name = "Equip",
	tip = "equipTip",
	icon = "icon16/tick.png",
	OnRun = function(item)
		local client = item.player

		client:Give(item.class)
		client:SetAmmo(item.ammoamount, item.ammotype)
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") != true and
			hook.Run("CanPlayerEquipItem", client, item) != false
	end
}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end