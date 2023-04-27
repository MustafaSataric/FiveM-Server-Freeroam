ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('tpmenu:TriggerMenu')
AddEventHandler('tpmenu:TriggerMenu', function()
	local xPlayer = ESX.GetPlayerFromId(source)

		TriggerClientEvent("tpmenu:open", source)
end)

function DoesHavePermision(xPlayer)
	local group = xPlayer.getGroup()
    if group == 'superadmin' or group == 'admin' or group == 'moderator' then
        return true
    end
	return false
end



