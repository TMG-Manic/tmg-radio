local TMGCore = exports['tmg-core']:GetCoreObject()

TMGCore.Functions.CreateUseableItem("radio", function(source)
    TriggerClientEvent('tmg-radio:use', source)
end)

for channel, config in pairs(Config.RestrictedChannels) do
    exports['pma-voice']:addChannelCheck(channel, function(source)
        local Player = TMGCore.Functions.GetPlayer(source)
        return config[Player.PlayerData.job.name] and Player.PlayerData.job.onduty
    end)
end
