local PLUGIN = PLUGIN

PLUGIN.name = "Spawn Notifications"
PLUGIN.description = "A notification which tells the player their status on loading the character."
PLUGIN.author = "Riggs Mackay"
PLUGIN.schema = "Any"
PLUGIN.license = [[
Copyright 2022 Riggs Mackay

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]

-- Feel free to change any of these messages.
local wakeupMessages = {
	-- "wakes up from a long nap and recover from your sleep.",
	-- "stands up and sniffing the fresh air from the world.",
	-- "starts to stand up and recover from your sleep.",
	-- "are sweating from all the scare you have been getting from your dream and you wake up.",
	-- "were dreaming of someone and you heard their voice, you started to wake up.",
	-- "hears a small whisper in your ear, after that you hear loud footsteps fading away, you wake up being scared.",
	-- "hears a loud helicopter overhead of yourself and you instantly wake up.",
	-- "heard a growling and you started to wake up but scared.",
	-- "heard a loud siren and you are scared of the noise.",
	"긴 낮잠에서 깨어나 몸을 일으킵니다.",
	"서늘한 바람을 느끼며 정신을 차립니다.",
	"자리에서 일어나며 잠에서 깨어납니다.",
	"악몽을 꾸다 화들짝 놀라 식은 땀을 흘리며 잠에서 깨어납니다.",
	"멍하니 있다 어떤 익숙한 목소리를 듣고 정신을 차렸지만 그 사람의 모습은 온데간데 찾아볼 수 없었습니다.",
	"귓가에 작은 속삭임이 들리다가 갑자기 누군가 달아나는 듯한 큰 발소리에 정신을 차립니다.",
	"머리 위를 지나는 시끄러운 헬리콥터 소리에 곧장 정신이 듭니다.",
	"그르륵 거리는 꺼림칙한 소리에 화들짝 놀라 정신을 차립니다.",
	"시끄러운 사이렌 소리에 놀라 정신이 듭니다.",
}

function PLUGIN:PlayerSpawn(ply)
	if not ( ply:IsValid() or ply:Alive() or ply:GetCharacter() ) then return end

	ply:ConCommand("play music/stingers/hl1_stinger_song16.mp3")
	ply:ScreenFade(SCREENFADE.IN, color_black, 3, 2)
	
	local msg = table.Random(wakeupMessages)

	ply:PlayerSay("/me "..msg)
end
