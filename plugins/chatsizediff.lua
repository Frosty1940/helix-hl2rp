PLUGIN.name = "Chat Size Difference"
PLUGIN.description = "Overrides size for different chat types."
PLUGIN.author = "Zoephix, Frosty"

ix.config.Add("chatSizeDiff", false, "Whether or not to use different chat sizes.", nil, {
	category = "chat"
})

if (CLIENT) then
	function PLUGIN:LoadFonts(font)
		surface.CreateFont("ixSmallChatFont", {
			font = font,
			size = math.max(ScreenScale(6), 17),
			extended = true,
			weight = 750
		})

		surface.CreateFont("ixItalicsChatFont", {
			font = font,
			size = math.max(ScreenScale(7), 17),
			extended = true,
			weight = 600,
			italic = true
		})

		surface.CreateFont("ixMediumChatFont", {
			font = font,
			size = math.max(ScreenScale(7), 17),
			extended = true,
			weight = 200
		})

		surface.CreateFont("ixBigChatFont", {
			font = font,
			size = math.max(ScreenScale(8), 17),
			extended = true,
			weight = 200
		})
	end

	function PLUGIN:ChatAddText(text, ...)
		if (ix.config.Get("chatSizeDiff", true)) then
			local chatText = {...}
			local chatMode = #chatText <= 4 and chatText[2] or chatText[3]

			if (!chatMode or istable(chatMode)) then
				return "<font=ixChatFont>"
			else
				local chatMode = string.lower(chatMode)

				if (string.match(chatMode, "yell")) then
					return "<font=ixBigChatFont>"
				elseif (string.sub(chatMode, 1, 2) == "**") then
					return "<font=ixItalicsChatFont>"
				elseif (string.match(chatMode, "whisper")) then
					return "<font=ixSmallChatFont>"
				elseif (string.match(chatMode, "ooc") or string.match(chatMode, "looc")) then
					return "<font=ixChatFont>"
				else
					return "<font=ixMediumChatFont>"
				end
			end
		else
			return text
		end
	end
end