local Request = {}
local API = {}
local Token = {}

function Token:RequestSearch()
	if _G.CurrentToken == nil then
		print("TokenFound")
	else
		print("TokenNotFound")
	end
end

function Token:Gen(newtoken)
	_G.CurrentToken = nil
	_G.NewToken = newtoken
	_G.CurrentToken = newtoken
	if Token:RequestSearch() then
		print("TokenAccessTRUE")
	else
		print("VC - TokenFalse")
	end
end

return Request, API, Token
