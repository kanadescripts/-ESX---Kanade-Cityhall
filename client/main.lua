lib.registerContext({
    id = "cityhall_menu",
    title = cityhallmenuConfig.title,
    options = {
        {
            title = cityhallmenuConfig.option1name,
            description = cityhallmenuConfig.option1price,
            onSelect = function()

                TriggerServerEvent("kanade-cityhall:buyIDCard")

            end
        },
        {
            title = cityhallmenuConfig.option2name,
            description = cityhallmenuConfig.option2price,
            onSelect = function()

                TriggerServerEvent("kanade-cityhall:buyDL")

            end

        },
        {
            title = "Fueler",
            description = "Apply to become a Fueler!",
            onSelect = function()

                TriggerServerEvent("kanade-cityhall:setJobFueler")

            end

        },
        {
            title = "Lumberjack",
            description = "Apply to become a Lumberjack!",
            onSelect = function()

                TriggerServerEvent("kanade-cityhall:setJobLumberjack")

            end

        },
        {
            title = "Miner",
            description = "Apply to become a Miner!",
            onSelect = function()

                TriggerServerEvent("kanade-cityhall:setJobMiner")

            end

        },
        {
            title = "Tailor",
            description = "Apply to become a Tailor!",
            onSelect = function()

                TriggerServerEvent("kanade-cityhall:setJobTailor")

            end

        },
        {
            title = "Fisherman",
            description = "Apply to become a Fisherman!",
            onSelect = function()

                TriggerServerEvent("kanade-cityhall:setJobFisherman")

            end

        },
    }
})

local x, y, z = table.unpack(blipConfig.coords)
local blip = AddBlipForCoord(x, y, z)

SetBlipSprite(blip, blipConfig.blipSprite)
SetBlipDisplay(blip, 4)
SetBlipScale(blip, blipConfig.blipScale)
SetBlipColour(blip, blipConfig.blipColour)
SetBlipAsShortRange(blip, blipConfig.blipShortRange)

BeginTextCommandSetBlipName("STRING")
AddTextComponentString(blipConfig.blipName)
EndTextCommandSetBlipName(blip)


CreateThread(function()
    local model = GetHashKey(npcConfig.npcModel)
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(10) end

    local x, y, z, h = npcConfig.npcCoords.x, npcConfig.npcCoords.y, npcConfig.npcCoords.z, npcConfig.npcCoords.w
    local _, groundZ = GetGroundZFor_3dCoord(x, y, z, false)

    local npc = CreatePed(4, model, x, y, groundZ, h, false, true)

    Wait(440)
    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)

    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local px, py, pz = table.unpack(GetEntityCoords(playerPed))
        local dist = #(vector3(px, py, pz) - vector3(x, y, groundZ))
        if dist < 3.0 then
            lib.showTextUI(npcConfig.npcText)
            if IsControlJustPressed(0, 38) then
            lib.notify({
            title = npcConfig.npcTitle,
            description = npcConfig.npcTextOnOpen,
            type = 'info'
                })
                lib.showContext("cityhall_menu")
            end
        else
            lib.hideTextUI()
        end
    end
end)