local Request = {}
local API = {}

function Request:AddUserSQL(username, password)
	local User = Instance.new("Folder", game.Workspace)
	local Password = Instance.new("StringValue", User)
	
	User.Name = username
	Password.Value = password
end

return Request, API
