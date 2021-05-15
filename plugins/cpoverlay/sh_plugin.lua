
local pl = PLUGIN

pl.name = "Combine Overlay"
pl.description = "Adds an overlay for the Combine team."
pl.author = "Nforce"

ix.util.Include("cl_overlay.lua")

ix.lang.AddTable("english", {
	optFpsEnabled = "Show FPS",
	optdFpsEnabled = "Show FPS counter at the right of the screen.",
})
ix.lang.AddTable("korean", {
	["9mm Pistol"] = "9mm 권총",
	["Standard Issue Pulse Rifle"] = "제식 펄스 소총",
    ["Submachine Gun"] = "기관단총",
    [".357 Revolver"] = ".357 리볼버",
    ["Grenade"] = "수류탄",
    ["Unknown"] = "미확인",
    ["LOCAL ASSET"] = "현장 자산",
    ["OVERWATCH ASSET"] = "감시 부대 자산",
    ["ASSET HEALTH: "] = "자산 체력: ",
    ["ASSET ARMOR: "] = "자산 방어력: ",
    ["ASSET TOKENS: "] = "자산 토큰: ",
    ["BIOSIGNAL ZONE: "] = "생체 신호 구역: ",
    ["BIOSIGNAL GRID: "] = "생체 신호 좌표: ",
    ["ARM: "] = "무장: ",
    ["Idle connection..."] = "대기 연결...",
    ["Pinging loopback..."] = "되돌림 신호 중...",
    ["Updating biosignal coordinates..."] = "생체 신호 좌표 갱신 중...",
    ["Establishing DC link..."] = "DC 연결 수립 중...",
    ["Checking exodus protocol status..."] = "이주 프로토콜 상태 확인 중...",
    ["Sending commdata to dispatch..."] = "디스패치에 통신 정보 보내는 중...",
    ["Checking biosignal data..."] = "생체 신호 확인 중...",
    ["Checking BOL list..."] = "BOL 목록 확인 중...",
    ["Purporting disp updates..."] = "디스패치 업데이트 적용 중...",
})