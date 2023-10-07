-- "gamemodes\\ixhl2rp\\plugins\\credits\\derma\\cl_credits.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
local PANEL = {}
local PLUGIN = PLUGIN

function PANEL:Init()
    self:SetSize(ScrW(), ScrH())
    self:SetAlpha(0)
    self:MakePopup()
    self:SetZPos(99999)

    --self:PlayMusic()
end

function PANEL:FadeInLogo()
    local logoPanel = self:Add("Panel")
    logoPanel:SetAlpha(0)
    logoPanel:AlphaTo(255, 3, 0, function()
        logoPanel:AlphaTo(0, 3, 0, function()
            self:FadeInTitleImage()
        end)
    end)

    local willardLabel = logoPanel:Add("DLabel")
    willardLabel:SetFont("CHudLabel")
    willardLabel:SetText("COLONIAL SUPER-SOLDIERS")
    willardLabel:SizeToContents()

    logoPanel:SetSize(willardLabel:GetWide(), SScale(196 / 3) + willardLabel:GetTall() + SScale(20 / 3))
    logoPanel:Center()

    local logo = logoPanel:Add("DImage")
    logo:SetImage("materials/helmwatch/reactormish.png")
    logo:SetSize(SScale(195 / 3), SScale(196 / 3))
    logo:Center()
    local x, _ = logo:GetPos()
    logo:SetPos(x, 0)

    willardLabel:Center()
    local x2, _ = willardLabel:GetPos()

    willardLabel:SetPos(x2, SScale(196 / 3) + SScale(20 / 3))
end

function PANEL:FadeInTitleImage()
    local titleImagePanel = self:Add("DHTML")
    titleImagePanel:OpenURL(ix.config.Get("eventCreditsImageURL", "https://files.catbox.moe/vqcwog.png"))
    titleImagePanel:SetSize(ix.config.Get("eventCreditsImageW", 300), ix.config.Get("eventCreditsImageH", 300))
    titleImagePanel:Center()

    local fadeThing = self:Add("Panel")
    fadeThing:SetSize(ix.config.Get("eventCreditsImageW", 300), ix.config.Get("eventCreditsImageH", 300))
    fadeThing:Center()
    fadeThing:SetAlpha(255)
    fadeThing:AlphaTo(0, 2, 0)
    fadeThing.Paint = function(this, w, h)
        surface.SetDrawColor(color_black)
        surface.DrawRect(0, 0, w, h)
    end

    timer.Simple(ix.config.Get("eventCreditsImageShownTimer", 5) + 2, function()
        fadeThing:AlphaTo(255, 2, 0, function()
            titleImagePanel:Remove()
            fadeThing:Remove()
            self:AlphaTo(0, 3, 0, function()
                self:Remove()
            end)
        end)
    end)
end

function PANEL:FadeInCredits()
    local height = 0
    local panelMove = self:Add("Panel")
    panelMove:SetWide(ScrW())

    local thanksTo = panelMove:Add("DLabel")
    thanksTo:SetFont("CHudLabel")
    thanksTo:SetText("COLONIAL SUPER-SOLDIERS\n       DIRECTER\n        fallen\n\n\n\n       DEVELOPER\n        fallen\n        Ronald\n\n\n\n       SUPPORT\n        Negative\n        4pple\n        Ronald")
    thanksTo:Dock(TOP)
    thanksTo:SizeToContents()
    thanksTo:DockMargin(0, 0, 0, SScale(20 / 3))
    thanksTo:SetContentAlignment(5)

    height = height + thanksTo:GetTall() + SScale(20 / 3)

    for _, v in pairs(PLUGIN.creditsMembers) do
        local member = panelMove:Add("DLabel")
        member:SetFont("CHudLabel")
        member:SetText(v or "")
        member:Dock(TOP)
        member:SizeToContents()
        member:SetContentAlignment(5)
        member:DockMargin(0, 0, 0, SScale(20 / 3))

        height = height + member:GetTall() + SScale(20 / 3)
    end

    panelMove:SetTall(height)
    panelMove:SetPos(0, ScrH())
    panelMove:MoveTo( 0, -ScrH(), ix.config.Get("eventCreditsSpeedOfRoller", 60), 0, 1, function()
        self:AlphaTo(0, 3, 0, function()
            self:Remove()
        end)
    end)
end

function PANEL:PlayMusic()
    self:MoveToFront()
	self:RequestFocus()

	timer.Create("ixEventCreditsStart", 3.5, 1, function()
		sound.PlayFile("sound/helmwatch/patient_zero.mp3", "", function()
		end)
	end)
end

function PANEL:OnRemove()
	timer.Remove("ixEventCreditsStart")

	if (IsValid(self.channel)) then
		self.channel:Stop()
	end
end

function PANEL:Paint(w, h)
    surface.SetDrawColor(color_black)
    surface.DrawRect(0, 0, w, h)
end

vgui.Register("ixEventCredits", PANEL, "Panel")