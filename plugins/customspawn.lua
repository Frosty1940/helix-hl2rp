--[[
< CATHERINE > - A free role-playing framework for Garry's Mod.
Development and design by L7D.

Catherine is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Catherine.  If not, see <http://www.gnu.org/licenses/>.
]]--

local PLUGIN = PLUGIN
PLUGIN.name = "Custom Spawn"
PLUGIN.author = "L7D, Frosty"
PLUGIN.description = "Custom Spawn"

ix.lang.AddTable("english", {
	customSpawnAdded = "You have set a this position for target player.",
	customSpawnRemoved = "You have removed a spawn point for target player.",
	cmdCustomSpawnAdd = "Add custom spawnpoint for target player.",
})

ix.lang.AddTable("korean", {
	customSpawnAdded = "당신은 이 지점을 해당 플레이어의 스폰 지점으로 설정하셨습니다.",
	customSpawnRemoved = "당신은 해당 플레이어의 스폰 지점을 지우셨습니다.",
	cmdCustomSpawnAdd = "해당 플레이어의 사용자 지정 스폰 지점을 추가합니다.",
})

ix.command.Add("CustomSpawnAdd", {
	description = "@cmdCustomSpawnAdd",
	superAdminOnly = true,
	arguments = {
		ix.type.character
	},
	OnRun = function(self, client, target)
		if (IsValid(target) and target:IsPlayer()) then
			local point = client:GetEyeTrace( ).HitPos
			local character = target:GetCharacter()
			character:SetVar("customSpawnPoint", point)
			client:NotifyLocalized("customSpawnAdded")
		else
			return "@invalidArg", 1
		end
	end
})

ix.command.Add("CustomSpawnRemove", {
	description = "@cmdCustomSpawnAdd",
	superAdminOnly = true,
	arguments = {
		ix.type.character
	},
	OnRun = function(self, client, target)
		if (IsValid(target) and target:IsPlayer()) then
			local point = client:GetEyeTrace( ).HitPos
			local character = target:GetCharacter()
			character:SetVar("customSpawnPoint", nil)
			client:NotifyLocalized("customSpawnRemoved")
		else
			return "@invalidArg", 1
		end
	end
})

if ( SERVER ) then
	function PLUGIN:CharacterLoaded(character)
		local client = character:GetPlayer()

		if (IsValid(character)) then
			local customSpawnPoint = character:GetVar("customSpawnPoint", nil)

			if (customSpawnPoint) then
				client:SetPos(customSpawnPoint)
			end
		end
	end
end