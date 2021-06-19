
local PLUGIN = PLUGIN

PLUGIN.name = "Door Breaching"
PLUGIN.author = "pedro.santos53"
PLUGIN.description = "Allows you to breach doors with breaching charges."

ix.config.Add("doorBreachingEnabled", true, "Whether or not door breaching is enabled.", nil, {
	category = "Door Breaching"
})

ix.lang.AddTable("english", {
	itemDoorBreachDesc = "A shaped explosive charge specially designed to do minimal structural damage to the target door while still granting access to the other side.",
})
ix.lang.AddTable("korean", {
	["Shaped Charge Breaching Device"] = "통로개척용 성형작약탄",
	itemDoorBreachDesc = "잠긴 문을 뚫고 건너편으로 통로개척할 때 목표가 되는 문에 구조적 피해를 최소한으로 가하도록 특별히 만든 성형작약 폭발물입니다.",
})
