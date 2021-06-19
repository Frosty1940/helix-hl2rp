ITEM.name = "Overwatch Standard Issue\n(Pulse-Rifle)"
ITEM.description = "ar2Desc"
ITEM.model = "models/weapons/w_irifle.mdl"
ITEM.class = "weapon_ar2"
ITEM.weaponCategory = "primary"
ITEM.classes = {CLASS_EOW, CLASS_OWS, CLASS_EMP}
ITEM.width = 4
ITEM.price = 1450
ITEM.height = 2
ITEM.iconCam = {
	ang	= Angle(-0.70499622821808, 268.25439453125, 0),
	fov	= 12.085652091515,
	pos	= Vector(0, 200, 0)
}

ITEM.lock = true

ITEM.functions.Equip = {
	name = "Equip",
	tip = "equipTip",
	icon = "icon16/tick.png",
	OnRun = function(item)
		item:Equip(item.player)
		return false
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") != true and
			hook.Run("CanPlayerEquipItem", client, item) != false and (client:IsCombine() or !item.lock)
	end
}

ITEM.functions.Unlock = {
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local inventory = character:GetInventory()
		local hasItem = inventory:HasItem("comkey")

		if (!client:IsCombine() and item.lock) then
			if (hasItem) then
				item.lock = false
				return false
			end
		else
			client:NotifyLocalized("needComkey")

			return false
		end
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