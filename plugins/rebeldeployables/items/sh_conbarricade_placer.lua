-- "gamemodes\\ixhl2rp\\plugins\\rebeldeployables\\items\\sh_conbarricade_placer.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ITEM.name = "콘크리트 바리게이트"
ITEM.description = "사람이나 이동수단 등의 통행을 막거나 적의 공격으로부터 엄폐하기 위해 사용되는 콘크리트 재질의 바리케이드로, 쉽게 설치할 수 있게끔 조립 도구가 함께 포함되어져 있습니다."
ITEM.model = Model("models/props_c17/concrete_barrier001a.mdl")
ITEM.noBusiness = true
ITEM.width = 2
ITEM.height = 2

ITEM.functions.place = {
    name = "설치하기",
	tip = "바리게이트를 설치합니다.",
	icon = "icon16/brick_add.png",
	OnRun = function(item)
        local client = item.player

        if (!client:Alive()) then return false end
        client:EmitSound("physics/cardboard/cardboard_box_break3.wav")

        client.previousWep = client:GetActiveWeapon():GetClass()
        client:Give("weapon_conbarricade_placer")
       	client:SelectWeapon("weapon_conbarricade_placer")

        return true
    end,
    OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}