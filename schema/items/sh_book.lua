
ITEM.name = "Book"
ITEM.model = Model("models/props_lab/binderblue.mdl")
ITEM.description = "bookDesc"
ITEM.price = 100

ITEM.functions.Use = {
	name = "Read",
	OnRun = function(item)
		local client = item.player
		local int = client:GetCharacter():GetAttribute("int", 0)

		-- client:EmitSound("items/battery_pickup.wav")
		client:GetCharacter():SetAttrib("int", int + 0.5)
	end,
	OnCanRun = function(item)
		local client = item.player
		local int = client:GetCharacter():GetAttribute("int", 0)
		local maxAttributes = ix.config.Get("maxAttributes", 30)
		return int + 0.5 <= maxAttributes
	end
}
