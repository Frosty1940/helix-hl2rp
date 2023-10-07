local PLUGIN = PLUGIN

function PLUGIN:IsDecaying(entity)
	return entity.ixIsDecaying
end

function PLUGIN:Decay(entity, seconds, Callback)
	local color = entity:GetColor()	
	local subtract = math.ceil(color.a / seconds)
	local index = tostring({})
	local alpha = color.a
	
	if (!entity.ixIsDecaying) then
		entity.ixIsDecaying = index
	end;

	entity:SetRenderMode(RENDERMODE_TRANSALPHA)
	
	--self:SetPlayer(entity, NULL)
	index = entity.ixIsDecaying
	
	timer.Create("Decay"..index, 1, 0, function()
		alpha = alpha - subtract
		
		if (IsValid(entity)) then
			local color = entity:GetColor()
			local decayed = math.Clamp(math.ceil(alpha), 0, 255)
			
			if (color.a <= 0) then
				if (Callback) then Callback() end
				
				entity:Remove();
				timer.Remove("Decay"..index)
			else
				entity:SetColor(Color(color.r, color.g, color.b, decayed))
			end
		else
			timer.Remove("Decay"..index)
		end
	end)
end

function PLUGIN:Tick()
	local realCurTime = CurTime();
	local curTime = UnPredictedCurTime();
	
	--if (cwConfig:Get("fade_dead_npcs"):Get()) then
		for k, v in pairs(ents.FindByClass("class C_ClientRagdoll")) do
			if (!self:IsDecaying(v)) then
				self:Decay(v, 300);
			end
		end
	--end
	
end