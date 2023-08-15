local PLUGIN = PLUGIN

resource.AddWorkshop("2291046370") -- the content addon

function Schema:PlayerMessageSend(speaker, chatType, text, anonymous, receivers, rawText)
	if (chatType == "ic" or chatType == "w" or chatType == "y" or chatType == "dispatch" or chatType == "radio" or chatType == "radio_yell" or chatType == "radio_whisper" or chatType == "radio_eavesdrop" or chatType == "radio_eavesdrop_yell" or chatType == "radio_eavesdrop_whisper" or chatType == "broadcast" or chatType == "request" or chatType == "request_eavesdrop") then
		local class = self.voices.GetClass(speaker)
		
		for _, definition in ipairs(class) do
			local sounds, message = self.voices.GetVoiceList(definition, rawText)

			if (sounds) then
				local volume = 80
	
				if (chatType == "w" or chatType == "radio_whisper" or chatType == "radio_eavesdrop_whisper") then
					volume = 60
				elseif (chatType == "y" or chatType == "radio_yell" or chatType == "radio_eavesdrop_yell") then
					volume = 150
				end
				
				if (definition.onModify) then
					if (definition.onModify(speaker, sounds, chatType, text) == false) then
						continue
					end
				end
	
				if (definition.global) then
					netstream.Start(nil, "voicePlay", sounds, volume)
				else
					netstream.Start(nil, "voicePlay", sounds, volume, speaker:EntIndex())
	
					if ((chatType == "radio" or chatType == "radio_yell" or chatType == "radio_whisper" or chatType == "radio_eavesdrop" or chatType == "radio_eavesdrop_yell" or chatType == "radio_eavesdrop_whisper" or chatType == "request" or chatType == "request_eavesdrop") and receivers) then
						for k, v in pairs(receivers) do
							if (receivers == speaker) then
								continue
							end
	
							netstream.Start(nil, "voicePlay", sounds, volume * 0.5, v:EntIndex())
						end
					end
						
					if (speaker:IsCombine()) then
						speaker.bTypingBeep = nil

						if (speaker:Team() == FACTION_MPF) then
							sounds[#sounds + 1] = "NPC_MetroPolice.Radio.Off"
						else
							sounds[#sounds + 1] = "Vocoder.Off"
						end
					end
				end
				
				if (speaker:IsCombine()) then
					return string.format("<:: %s ::>", message)
				else
					return message
				end
			end
		end
	end
	
	if (chatType == "broadcast") then
		netstream.Start(nil, "PlaySound", "aurawatch/admin/announce.wav")
	end    
end

netstream.Hook("PlayerChatTextChanged", function(client, key)
	if (client:GetMoveType() != MOVETYPE_NOCLIP and client:IsCombine() and !client.bTypingBeep
	and (key == "y" or key == "w" or key == "r" or key == "t")) then
		if (client:Team() == FACTION_MPF) then
			client:EmitSound("NPC_MetroPolice.Radio.On")
		else
			client:EmitSound("Vocoder.On")
		end

		client.bTypingBeep = true
	end
end)

netstream.Hook("PlayerFinishChat", function(client)
	if (client:GetMoveType() != MOVETYPE_NOCLIP and client:IsCombine() and client.bTypingBeep) then
		if (client:Team() == FACTION_MPF) then
			client:EmitSound("NPC_MetroPolice.Radio.Off")
		else
			client:EmitSound("Vocoder.Off")
		end

		client.bTypingBeep = nil
	end
end)