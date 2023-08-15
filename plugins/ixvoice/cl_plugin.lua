netstream.Hook("PlayQueuedSound", function(entity, sounds, delay, spacing, volume, pitch)
	entity = entity or LocalPlayer()

	ix.util.EmitQueuedSounds(entity, sounds, delay, spacing, volume, pitch)
end)

netstream.Hook("voicePlay", function(sounds, volume, index)
	if (index) then
		local client = Entity(index)

		if (IsValid(client)) then
			ix.util.EmitQueuedSounds(client, sounds, nil, nil, volume)
		end
	else
		ix.util.EmitQueuedSounds(LocalPlayer(), sounds, nil, nil, volume)
	end
end)