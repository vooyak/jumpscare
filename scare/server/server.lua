local defaultSeconds = 1000 * 5 -- 5 Seconds

RegisterCommand('jumpscare2', function(source, args, rawCommand)
    local target = tonumber(args[1])

    if source > 0 then
        if IsPlayerAceAllowed(source, 'jumpscare') then
            if target ~= -1 then
                if target and GetPlayerName(target) then
                    if tonumber(args[2]) then
                        local playTime = tonumber(args[2]) * 1000
                        TriggerClientEvent('Jumpscare:Scare', target, playTime)
                    else 
                        TriggerClientEvent('Jumpscare:Scare', target, defaultSeconds)
                    end
                else 
                    TriggerClientEvent('chat:addMessage', source, {
                        args = {"^1ERROR", string.format('No player found with ID ~r~%s~w~', target)}
                    })
                end
            end
        else 
            TriggerClientEvent('chat:addMessage', source, {
                args = {"^1ERROR", 'Access denied'}
            })
        end
    else 
        if target ~= -1 then
            if target and GetPlayerName(target) then
                if tonumber(args[2]) then
                    local playTime = tonumber(args[2]) * 1000
                    
                    TriggerClientEvent('Jumpscare:Scare', target, playTime)
                else 
                    TriggerClientEvent('Jumpscare:Scare', target, defaultSeconds)
                end
            else 
                print(string.format('No player found with ID ~r~%s~w~', target))
            end
        end
    end
end, false)

RegisterServerEvent('Jumpscare:Scare', function(length)
    local src = source
    TriggerClientEvent('Jumpscare:Scare', src, length or defaultSeconds)
end)