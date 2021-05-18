local bands = { --taka tablica, żeby nie zapierdalać po tabelach itemku
	["brown"] = {Color(102, 51, 51),"Brown loyalist wristband"},
	["red"] = {Color(192, 57, 43),"Red loyalist wristband"},
	["green"] = {Color(39, 174, 96),"Green loyalist wristband"},
	["blue"] = {Color(41, 128, 185),"Blue loyalist wristband"},
	["white"] = {Color(221, 221, 221),"White loyalist wristband"},
	["gold"] = {Color(241, 196, 15),"Gold loyalist wristband"},
	["violet"] = {Color(142, 68, 173),"Purple loyalist wristband"}
	["cwu"] = {Color(245, 226, 142), "itemCWUBandDesc"}
}

function PLUGIN:PopulateCharacterInfo(client, character, tooltip)
	local band = client:GetNW2String("band",false) --string z typem opaski, czyli można rzec, że kolorem
	if band then --jako, że po zdjęciu banda NWString jest nilem to można zajebać takiego checka
		local panel = tooltip:AddRowAfter("name", "band")
		panel:SetBackgroundColor(bands[band][1]) 
		panel:SetText(L(bands[band][2]))
		panel:SizeToContents()
	end
end	