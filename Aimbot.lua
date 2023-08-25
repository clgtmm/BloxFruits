spawn(function()
        local gg = getrawmetatable(game)
        local old = gg.__namecall
        setreadonly(gg,false)
        gg.__namecall = newcclosure(function(...)
            local method = getnamecallmethod()
            local args = {...}
            if tostring(method) == "FireServer" then
                if tostring(args[1]) == "RemoteEvent" then
                    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                        if _G.Setting["Start Hunting"] and _G.PosTar ~= nil then
                            args[2] = _G.PosTar
                            return old(unpack(args))
                        end
                    end
                end
            end
            return old(...)
        end)
end)
