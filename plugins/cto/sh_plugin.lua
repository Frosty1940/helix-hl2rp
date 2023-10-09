
PLUGIN.name = "Combine Technology Overlay"
PLUGIN.author = "Trudeau & Aspect™"
PLUGIN.description = "A Helix port of the modern overhaul of Combine technology designed with non-intrusiveness and responsiveness in mind."

ix.util.Include("cl_hooks.lua")
ix.util.Include("cl_plugin.lua")
ix.util.Include("sh_commands.lua")
ix.util.Include("sh_configs.lua")
ix.util.Include("sv_hooks.lua")
ix.util.Include("sv_plugin.lua")

ix.lang.AddTable("english", {
	ctoMovementViolation = "Movement violation(s) sighted by C-i%s...",
	ctoNoBioSignal = "Note: Your character currently has no biosignal.",
	ctoTraumaPacket = "Downloading trauma packet...",
	ctoLostConsciousness = "WARNING! Protection team unit %s lost consciousness at %s...",
	ctoLostBiosignalDownload = "Downloading lost biosignal...",
	ctoLostBiosignal = "WARNING! Biosignal lost for protection team unit %s at %s...",
	ctoConnectionRestored = "Connection restored...",
	ctoFoundBiosignalDownload = "Downloading found biosignal...",
	ctoNoncohesiveBiosignal = "ALERT! Noncohesive biosignal found for protection team unit %s at %s...",
	ctoShuttingDown = "ERROR! Shutting down...",
	ctoAssistanceRequest = "Assistance request received...",
})

ix.lang.AddTable("korean", {
	ctoMovementViolation = "C-i%s에서 동작 위반 포착...",
	ctoNoBioSignal = "알림: 당신의 캐릭터는 현재 생체 신호가 없습니다.",
	ctoTraumaPacket = "트라우마 패킷 내려받는 중...",
	ctoLostConsciousness = "경고! 보호 기동대 병력 %s, %에서 의식 상실...",
	ctoLostBiosignalDownload = "상실한 생체 신호 내려받는 중...",
	ctoLostBiosignal = "경고! 보호 기동대 병력 %s, %에서 생체 신호 상실...",
	ctoConnectionRestored = "연결 복구됨...",
	ctoFoundBiosignalDownload = "찾은 생체 신호 내려받는 중...",
	ctoNoncohesiveBiosignal = "경고! 보호 기동대 병력 %s, %에서 비응집성 생체 신호 발견...",
	ctoShuttingDown = "오류! 종료 중...",
	ctoAssistanceRequest = "지원 요청 수신...",
})

PLUGIN.sociostatusColors = {
	GREEN = Color(0, 255, 0),
	BLUE = Color(0, 128, 255),
	YELLOW = Color(255, 255, 0),
	RED = Color(255, 0, 0),
	BLACK = Color(128, 128, 128)
}

-- Biosignal change enums, used for player/admin command language variations.
PLUGIN.ERROR_NONE = 0
PLUGIN.ERROR_NOT_COMBINE = 1
PLUGIN.ERROR_ALREADY_ENABLED = 2
PLUGIN.ERROR_ALREADY_DISABLED = 3

-- Movement violation enums, used when networking cameras.
PLUGIN.VIOLATION_RUNNING = 0
PLUGIN.VIOLATION_JUMPING = 1
PLUGIN.VIOLATION_CROUCHING = 2
PLUGIN.VIOLATION_FALLEN_OVER = 3

-- Camera controlling enums.
PLUGIN.CAMERA_VIEW = 0
PLUGIN.CAMERA_DISABLE = 1
PLUGIN.CAMERA_ENABLE = 2

function PLUGIN:isCameraEnabled(camera)
	return camera:GetSequenceName(camera:GetSequence()) == "idlealert"
end
