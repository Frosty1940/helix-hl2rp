local PLUGIN = PLUGIN
PLUGIN.name = "Better Armor"
PLUGIN.author = "Subleader, Alex Grist, and Frosty"
PLUGIN.desc = "Compatible with bad air and localized damage, plus it adds damage resistance."

ix.lang.AddTable("english", {
	gasmaskRemoved = "You have removed your gasmask",
	gasmaskEquipped = "You have put on your gasmask.",
	repairToolsDesc = "Some tools for repairing armour.",
	hatDesc = "A cap worn by the military personnel in the field when a combat helmet is not required.\n(CONSCRIPT MODELS ONLY)",
	hazmatSuitDesc = "A military protective clothing that protects wearers from harmful environments.\n(MALE CONSCRIPT MODELS ONLY)",
	hazmatSuitCitizenDesc = "A protective clothing that protects wearers from harmful environments.",
	pasgtBodyArmorDesc = "A Kebler-fiber bulletproof vest that the U.S. Army adopted in 1983 to replace M69 Flak Vest.\n(CONSCRIPT MODELS ONLY)",
	pasgtHelmetDesc = "A Kebler-fiber bulletproof helmet that the U.S. Army adopted in 1983 to replace the M1 steel helmet.\n(MALE CONSCRIPT MODELS ONLY)",
})
ix.lang.AddTable("korean", {
	["Intelligence"] = "지능",
	gasmaskRemoved = "방독면 착용을 해제했습니다.",
	gasmaskEquipped = "방독면을 착용했습니다.",
	Repair = "수리하기",
	["Repair Tools"] = "수리 공구",
	repairToolsDesc = "방어구의 수리에 쓰이는 공구를 모아두었습니다.",
	["Field Cap"] = "전투모",
	hatDesc = "군인이 평상시에 착용하도록 만든 모자입니다.\n(징집군 모델 전용)",
	["Hazmat Suit"] = "방호복",
	hazmatSuitDesc = "유해한 환경으로부터 착용자를 보호하는 군용 방호복입니다.\n(남성 징집군 모델 전용)",
	hazmatSuitCitizenDesc = "유해한 환경으로부터 착용자를 보호하는 방호복입니다.",
	["PASGT Vest"] = "PASGT 방탄복",
	pasgtBodyArmorDesc = "1983년 미군이 M69 방편복을 대체하여 채용한 케블러 섬유 소재 방탄복입니다.\n(징집군 모델 전용)",
	["PASGT Helmet"] = "PASGT 방탄모",
	pasgtHelmetDesc = "1983년 미군이 M1 철모를 대체하여 채용한 케블러 섬유 소재 방탄모입니다.\n(남성 징집군 모델 전용)",
})

ix.util.Include("cl_plugin.lua")

function PLUGIN:EntityTakeDamage( target, dmginfo )
	if ( target:IsPlayer() ) then
		if ( target:GetNetVar("resistance") == true ) then
			if (dmginfo:IsDamageType(DMG_BULLET)) then
				dmginfo:ScaleDamage(target:GetNWFloat("dmg_bullet"))
			elseif (dmginfo:IsDamageType(DMG_SLASH)) then
				dmginfo:ScaleDamage(target:GetNWFloat("dmg_slash"))
			elseif (dmginfo:IsDamageType(DMG_SHOCK)) then
				dmginfo:ScaleDamage(target:GetNWFloat("dmg_shock"))
			elseif (dmginfo:IsDamageType(DMG_BURN)) then
				dmginfo:ScaleDamage(target:GetNWFloat("dmg_burn"))
			elseif (dmginfo:IsDamageType(DMG_RADIATION)) then
				dmginfo:ScaleDamage(target:GetNWFloat("dmg_radiation"))
			elseif (dmginfo:IsDamageType(DMG_ACID)) then
				dmginfo:ScaleDamage(target:GetNWFloat("dmg_acid"))
			elseif (dmginfo:IsExplosionDamage()) then
				dmginfo:ScaleDamage(target:GetNWFloat("dmg_explosive"))
			end
		end
	end
end

function PLUGIN:PlayerHurt( client, attacker, health, damageTaken )
	if (client:IsPlayer()) then
		local character = client:GetCharacter()
		local inventory = character:GetInventory()
		local items = inventory:GetItems()
		
		for k, v in pairs(items) do
			if (v:GetData("equip")) then
				if (v.base == "base_armor") then
					local durability = v:GetData("Durability", 100)
					
					if (durability > 0) then
						v:SetData("Durability", math.max(durability - (damageTaken/2)))
					elseif (durability == 0 or durability < 0) then
						v:RemoveOutfit(client)
						v:SetData("Durability", 0)
					end
				end
			end
		end
	end
end

ix.command.Add("Gasmask", {
	description = "Wear or unwear your gasmask.",
	adminOnly = false,
	OnRun = function(self, client)
		local character = client:GetCharacter()
		local inventory = character:GetInventory()
		local items = inventory:GetItems()
		for k, v in pairs(items) do
			if (v.base == "base_armor") and (v.gasmask == true) then
				if client:GetNetVar("gasmask") then
					client:SetNetVar("gasmask", false)
					client:NotifyLocalized("gasmaskRemoved")
				else
					client:SetNetVar("gasmask", true)
					client:NotifyLocalized("gasmaskEquipped")
				end
			end
		end
	end
})