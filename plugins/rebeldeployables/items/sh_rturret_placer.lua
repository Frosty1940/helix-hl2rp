-- "gamemodes\\ixhl2rp\\plugins\\rebeldeployables\\items\\sh_rturret_placer.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ITEM.name = "람다 터렛"
ITEM.description = "감시 부대에서 흔히 운용하는 표준 제식 터렛을 저항군 진영에서 노획하여 개조한 것으로, 레이저 포인터로 대상의 생체 신호를 감지하고 내장된 펄스 탄환들을 쏟아부어 침입자를 제거하는데 사용됩니다."
ITEM.model = Model("models/combine_turrets/floor_turret.mdl")
ITEM.noBusiness = true
ITEM.width = 2
ITEM.height = 3

ITEM.functions.place = {
    name = "설치하기",
	tip = "터렛을 설치합니다.",
	icon = "icon16/brick_add.png",
	OnRun = function(item)
        local client = item.player

        if (!client:Alive()) then return false end
        client:EmitSound("physics/cardboard/cardboard_box_break3.wav")

        client.previousWep = client:GetActiveWeapon():GetClass()
        client:Give("weapon_rturret_placer")
       	client:SelectWeapon("weapon_rturret_placer")

        return true
    end,
    OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}