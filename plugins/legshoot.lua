PLUGIN.name = "Legs wyjebnik"
PLUGIN.author = "Lechu2375"
PLUGIN.description = "Now hitting right in the legs causes injures."
PLUGIN.license =  "MIT not for use on Kaktusownia opensource.org/licenses/MIT"

if SERVER then
	local legs = {
		[HITGROUP_LEFTLEG] = true,
		[HITGROUP_RIGHTLEG] = true
	}
	--table with factions enums that should be resistant to these effects, you can find faction enum in the faction file
	--Example:
	/*
	local resFactions = {  
		[FACTION_OTA] = true,
		[FACTION_MPF] = true
	}
	*/
	local resFactions = {
		[FACTION_OTA] = true,
	}--fill this table

	function PLUGIN:ScalePlayerDamage(ply,hitgroup,dmginfo )
		local char = ply:GetCharacter()
		if char then
			if resFactions[char:GetFaction()] then return end
			if ply:Armor() > 0 then return end
			if legs[hitgroup] then
				local luck = char:GetAttribute("lck", 0)
				local luckMlt = ix.config.Get("luckMultiplier", 1)
				local endurance = char:GetAttribute("end", 0)
				local endMlt = ix.config.Get("enduranceMultiplier", 0.2)
				local chance = math.random(1,100) - luck * luckMlt - endurance * endMlt
				if (chance<=40) then
					ply:SetRagdolled(true, math.max(math.random(10) - luck * luckMlt, 1))   
					/*else // negotiable, I havent tested this.
					char:AddBoost("legShoot","stm",-50)   
					char:AddBoost("legShoot","stamina",-60)  */   
				end
			end
		end
	end
end