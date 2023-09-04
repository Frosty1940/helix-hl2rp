
local PLUGIN = PLUGIN

PLUGIN.name = "Coinflip"
PLUGIN.author = "Frosty"
PLUGIN.description = "Adds a command to flip a coin."

ix.lang.AddTable("english", {
	cmdCoinFlip = "Flips a coin to land heads/tails.",
})
ix.lang.AddTable("korean", {
	cmdCoinFlip = "동전을 던져 앞뒷면을 가립니다.",
})

ix.command.Add("CoinFlip", {
	description = "@cmdCoinFlip",
	adminOnly = false,
	OnRun = function(self, client, character)
      if (!client:GetCharacter():HasMoney()>=1) then
			  return "@insufficientMoney"
		  end
      
      local coin = math.random()
      
      if coin > 0 then
        -- client:PlayerSay("/me fliped a coin and it landed heads.")
        client:PlayerSay("/me 동전을 던졌더니 앞면이 나왔다.")
      else
        -- client:PlayerSay("/me fliped a coin and it landed tails.")
        client:PlayerSay("/me 동전을 던졌더니 뒷면이 나왔다.")
      end
	end
})

