local PLUGIN = PLUGIN
PLUGIN.name = "Suit and Health Charger"
PLUGIN.author = "Black Tea, Frosty"
PLUGIN.description = "I was bored."

if (SERVER) then
	function PLUGIN:SaveData()
		local entTable = {}
		local class
		for k, v in ipairs(ents.GetAll()) do
			class = v:GetClass():lower()
			if (class == "ix_charger") then
				table.insert(entTable, {
					class = class,
					pos = v:GetPos(),
					ang = v:GetAngles()
				})
			end
		end

		self:SetData(entTable)
	end

	function PLUGIN:LoadData()
		local entTable = self:GetData(entTable) or {}
		
		for k, v in ipairs(entTable) do
			local ent = ents.Create(v.class or "ix_charger")
			ent:SetPos(v.pos)
			ent:SetAngles(v.ang)
			ent:Spawn()
			ent:Activate()
		end
	end
end