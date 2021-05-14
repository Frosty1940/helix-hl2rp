
local PLUGIN = PLUGIN
-- credits to neb.cloud dev team, not taking credit for most of this code.
PLUGIN.name = "Union Locks"
PLUGIN.author = "Nforce"
PLUGIN.description = "Adds locks for civil workers."

ix.util.Include("sv_hooks.lua")

if SERVER then
    function PLUGIN:SaveUnionLocks()
        local data = {}
    
        for _, v in ipairs(ents.FindByClass("ix_unionlock")) do
            if (IsValid(v.door)) then
                data[#data + 1] = {
                    v.door:MapCreationID(),
                    v.door:WorldToLocal(v:GetPos()),
                    v.door:WorldToLocalAngles(v:GetAngles()),
                    v:GetLocked()
                }
            end
        end
    
        ix.data.Set("unionLocks", data)
    end

    function PLUGIN:LoadUnionLocks()
        for _, v in ipairs(ix.data.Get("unionLocks") or {}) do
            local door = ents.GetMapCreatedEntity(v[1])
    
            if (IsValid(door) and door:IsDoor()) then
                local lock = ents.Create("ix_unionlock")
    
                lock:SetPos(door:GetPos())
                lock:Spawn()
                lock:SetDoor(door, door:LocalToWorld(v[2]), door:LocalToWorldAngles(v[3]))
                lock:SetLocked(v[4])
            end
        end
    end
end
