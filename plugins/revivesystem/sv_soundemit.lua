util.AddNetworkString("ReviveAction")
local maleSounds = {
	"vo/npc/male01/pain01.wav",
	"vo/npc/male01/pain02.wav",
	"vo/npc/male01/pain03.wav",
	"vo/npc/male01/pain04.wav",
	"vo/npc/male01/pain05.wav",
	"vo/npc/male01/pain06.wav",
	"vo/npc/male01/pain07.wav",
	"vo/npc/male01/pain08.wav",
	"vo/npc/male01/pain09.wav",
}
local femaleSounds = {
	"vo/npc/female01/pain01.wav",
	"vo/npc/female01/pain02.wav",
	"vo/npc/female01/pain03.wav",
	"vo/npc/female01/pain04.wav",
	"vo/npc/female01/pain05.wav",
	"vo/npc/female01/pain06.wav",
	"vo/npc/female01/pain07.wav",
	"vo/npc/female01/pain08.wav",
	"vo/npc/female01/pain09.wav",
}
local metropoliceSounds = {
	"npc/metropolice/pain1.wav",
	"npc/metropolice/pain2.wav",
	"npc/metropolice/pain3.wav",
	"npc/metropolice/pain4.wav",
}
local combineSounds = {
	"npc/combine_soldier/pain1.wav",
	"npc/combine_soldier/pain2.wav",
	"npc/combine_soldier/pain3.wav",
}
net.Receive("ReviveAction", function(len,ply)
	local character = ply:GetCharacter()
	if (!character) then return end
	 local action = net.ReadUInt(1)
	print(action)
	if (IsValid(ply.ixRagdoll) and (ply.nextReviveAction or CurTime())<=CurTime() ) then
		ply.nextReviveAction = CurTime()+4

		if(action==0 and ply:Alive()) then
			local uid = "dietime"..character:GetID() 
			timer.Remove(uid)
			ply:Kill()
			
		else
			if (ply:IsCombine()) then
				if (ply:Team() == FACTION_OTA) then
					ply:EmitSound(combineSounds[ math.random( #combineSounds ) ],70)
				end
				if (ply:Team() == FACTION_MPF) then
					ply:EmitSound(combineSounds[ math.random( #metropoliceSounds ) ],70)
				end
			else
				if (ply:IsFemale()) then
					ply:EmitSound(femaleSounds[ math.random( #femaleSounds ) ],90)
				else
					ply:EmitSound(maleSounds[ math.random( #maleSounds ) ],90)
				end
			end
		end
	end
end)

