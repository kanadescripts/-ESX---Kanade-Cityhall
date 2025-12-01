ESX = exports["es_extended"]:getSharedObject()


RegisterNetEvent("kanade-cityhall:buyIDCard")
AddEventHandler("kanade-cityhall:buyIDCard", function()
    local src = source 
    local xPlayer = ESX.GetPlayerFromId(src)

    local moneyCount = exports.ox_inventory:GetItemCount(src, genConfig.moneyitemname)

    if moneyCount >= genConfig.idcardprice then

        exports.ox_inventory:RemoveItem(src, genConfig.moneyitemname, genConfig.idcardprice)

                local metadata = {
            name = xPlayer.getName(),
        }

        exports.ox_inventory:AddItem(src, genConfig.idcarditemname, 1, metadata)

        TriggerClientEvent('ox_lib:notify', src, {
            title = genConfig.npcname,
            description = "You paid " .. genConfig.idcardprice .. "$ and received your " .. genConfig.idcardlabel .. "!",
            type = 'success'
        })

    else

        TriggerClientEvent('ox_lib:notify', src, {
            title = genConfig.npcname,
            description = "You don't have enough money to buy a " .. genConfig.idcardlabel .. "!",
            type = 'error'
        })

    end
end)

RegisterNetEvent("kanade-cityhall:buyDL")
AddEventHandler("kanade-cityhall:buyDL", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    local metadata = {
        name = xPlayer.getName()
    }

    local moneyCount = exports.ox_inventory:GetItemCount(src, genConfig.moneyitemname)

    if moneyCount >= genConfig.dlprice then

        exports.ox_inventory:RemoveItem(src, genConfig.moneyitemname, genConfig.dlprice)

        local metadata = {
            name = xPlayer.getName(),
            licenseType = "B",
            expiry = "01.01.2030"
        }

        exports.ox_inventory:AddItem(src, genConfig.dlitemname, 1, metadata)

        TriggerClientEvent('ox_lib:notify', src, {
            title = genConfig.npcname,
            description = "You paid " .. genConfig.dlprice .. "$ and received your " .. genConfig.dllabel .. "!",
            type = 'success'
        })

    else

        TriggerClientEvent('ox_lib:notify', src, {
            title = genConfig.npcname,
            description = "You don't have enough money to buy a " .. genConfig.dllabel .. "!",
            type = 'error'
        })

    end
end)


RegisterNetEvent("kanade-cityhall:setJobFueler", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.setJob("fueler", 0)

        TriggerClientEvent("ox_lib:notify", src, {
            title = genConfig.npcname,
            description = "Your new job is Fueler!",
            type = "success"
        })
    end
end)

RegisterNetEvent("kanade-cityhall:setJobLumberjack", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.setJob("lumberjack", 0)

        TriggerClientEvent("ox_lib:notify", src, {
            title = genConfig.npcname,
            description = "Your new job is Lumberjack!",
            type = "success"
        })
    end
end)

RegisterNetEvent("kanade-cityhall:setJobFisherman", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.setJob("fisherman", 0)

        TriggerClientEvent("ox_lib:notify", src, {
            title = genConfig.npcname,
            description = "Your new job is Fisherman!",
            type = "success"
        })
    end
end)

RegisterNetEvent("kanade-cityhall:setJobMiner", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.setJob("miner", 0)

        TriggerClientEvent("ox_lib:notify", src, {
            title = genConfig.npcname,
            description = "Your new job is Miner!",
            type = "success"
        })
    end
end)

RegisterNetEvent("kanade-cityhall:setJobSlaughterer", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.setJob("slaughterer", 0)

        TriggerClientEvent("ox_lib:notify", src, {
            title = genConfig.npcname,
            description = "Your new job is Slaughterer!",
            type = "success"
        })
    end
end)

RegisterNetEvent("kanade-cityhall:setJobTailor", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.setJob("tailor", 0)

        TriggerClientEvent("ox_lib:notify", src, {
            title = genConfig.npcname,
            description = "Your new job is Tailor!",
            type = "success"
        })
    end
end)
