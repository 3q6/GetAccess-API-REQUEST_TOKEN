local Request = {}
local API = {}

function Request:SearchUserSQL(username)
	_G.UserSearchResult = username
	if game.Workspace:FindFirstChild(_G.UserSearchResult) then
		print("UserFound")
	else
		print("UserNotFound")
	end
end

function Request:FindUserSQL(username, passwordforauth)
	if Request:SearchUserSQL(username) then
		print("UserFound - passwordforauth")
	else
		print("APINOTFOUNDREQUEST")
	end
end

return Request, API
