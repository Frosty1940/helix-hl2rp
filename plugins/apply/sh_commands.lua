local PLUGIN = PLUGIN

ix.command.Add("Apply", {
    description = "@cmdApply",
    OnRun = function(self, client)
        local character = client:GetCharacter()

        if character then
            local cid = character:GetData"cid"
            
            if cid then
                ix.chat.Send(client, "ic", client:Name().."#"..cid)
            elseif client:IsCombine() then
                return client:NotifyLocalized("dontHaveCID")
            else
                return client:NotifyLocalized("dontHaveCID")
            end
        end
    end
})

ix.command.Add("Name", {
    description = "@cmdName",
    OnRun = function(self, client)
        local character = client:GetCharacter()

        if character then
            ix.chat.Send(client, "ic", client:Name())
        end
    end
})