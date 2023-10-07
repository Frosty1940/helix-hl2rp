local PLUGIN = PLUGIN

netstream.Hook("EditEventCredits", function(creditsMembers)
    PLUGIN.creditsMembers = creditsMembers
    vgui.Create("ixEventCreditsEditor")
end)