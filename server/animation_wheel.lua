function Server_OnPlayerAnimation(player, id)
	SetPlayerAnimation(player, "STOP")
	SetPlayerAnimation(player, id)
end

AddRemoteEvent("Server_OnPlayerAnimation", Server_OnPlayerAnimation)