ITEM.name = "Night Vision"
ITEM.description = "nvgogDesc"
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.price = 220000
ITEM.width = 1
ITEM.height = 1
ITEM.outfitCategory = "goggles"

ITEM.pacData = {
	[1] = {
		["children"] = {
			[1] = {
				["children"] = {
				},
				["self"] = {
					["Angles"] = Angle(7.5132084020879e-05, -75, -90.000007629395),
					["Position"] = Vector(4.640625, 1.3984375, 0),
					["ClassName"] = "model",
					["Model"] = "models/warz/civinvg.mdl",
					["UniqueID"] = "NV_MODEL",
				},
			},
		},
		["self"] = {
			["EditorExpand"] = true,
			["UniqueID"] = "NIGHTVISION",
			["ClassName"] = "group",
			["Name"] = "my outfit",
			["Description"] = "add parts to me!",
		},
	},
}

if (CLIENT) then
    local sndOn = Sound( "items/nvg_on.wav" )
    local sndOff = Sound( "items/nvg_off.wav" )
	
	netstream.Hook("ixNVToggle", function(bool)
		if not LocalPlayer():Alive() then
			return
		end

        NV_Status = bool
		NV_NIGHTTYPE = 1
        
        if bool then        
            CurScale = 0.2
            surface.PlaySound( sndOn )
            hook.Add("RenderScreenspaceEffects", "NV_FX", NV_FX)
            hook.Add("PostDrawViewModel", "NV_PostDrawViewModel", NV_PostDrawViewModel)    
        else
            surface.PlaySound( sndOff )
            hook.Remove("RenderScreenspaceEffects", "NV_FX")
            hook.Remove("PostDrawViewModel", "NV_PostDrawViewModel")
        end
	end)
end

local function OnEquipped(item)
	if (item:GetData("equip")) then
		netstream.Start(item.player, "ixNVToggle", true)
		item.player:ScreenFade(1, Color(255, 255, 255, 100), .4, 0)
	end
end

local function OnUnequipped(item)
	if (!item:GetData("equip")) then
		netstream.Start(item.player, "ixNVToggle", false)
		item.player:ScreenFade(1, Color(255, 255, 255, 100), .4, 0)
	end
end

ITEM:PostHook("Equip", OnEquipped)
ITEM:PostHook("EquipUn", OnUnequipped)
