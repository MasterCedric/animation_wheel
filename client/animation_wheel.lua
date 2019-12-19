web = nil

function OnPackageStart()
	web = CreateWebUI(0, 0, 0, 0)
	LoadWebFile(web, "http://asset/" .. GetPackageName() .. "/web/index.html")
	SetWebSize(web, 1065, 700)
	SetWebAlignment(web, 0.5, 0.5)
	SetWebAnchors(web, 0.5, 0.5, 0.5, 0.5)
	SetWebVisibility(web, WEB_HIDDEN)
end
AddEvent("OnPackageStart", OnPackageStart)

function OnKeyPress(key)
	if key == "F2" then
		if(GetWebVisibility(web) == 0) then
			SetWebVisibility(web, WEB_VISIBLE)
			ShowMouseCursor(true)
		else
			SetWebVisibility(web, WEB_HIDDEN)
			ShowMouseCursor(false)
		end
	end
end
AddEvent("OnKeyPress", OnKeyPress)

function OnPlayerAnimation(id)
	CallRemoteEvent("Server_OnPlayerAnimation", id)
end
AddEvent("OnPlayerAnimation", OnPlayerAnimation)