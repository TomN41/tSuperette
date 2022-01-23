ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent(':TomN | C-host.fr::giveItem')
AddEventHandler(':TomN | C-host.fr::giveItem', function(item, count)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerMoney = xPlayer.getMoney()
        if playerMoney >= (item.Price * count) then
    xPlayer.addInventoryItem(item.Value, count)
    xPlayer.removeMoney(item.Price * count)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~g~" ..count..  " "  ..item.Label.. "~s~ pour ~g~" ..item.Price * count .. "$")
    else
        TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez pas assez ~r~d\'argent")
    end
end)