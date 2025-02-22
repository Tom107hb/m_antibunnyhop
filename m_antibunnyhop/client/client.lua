local NumberJump = 4

CreateThread(function()
    local jump = 0
    while true do
        Wait(1)

        local ped = PlayerPedId()

        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            jump = jump + 1

            if jump >= NumberJump then
                SetPedToRagdoll(ped, 5000, 1400, 2)
                jump = 0
            end
            
        else 
            Wait(500)
        end
    end
end)
