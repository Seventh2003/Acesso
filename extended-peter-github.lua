local token = "sxdcfvgsiuydfgsudfghysdjifnj" --TOKEN
local ipp = "88.214.58.157" -- IP
local acesso = nil
local verificar = nil



PerformHttpRequest('http://api.ipify.org/', function(errorCode, resultData, resultHeaders)
	if acesso == nil then
		
		for k,v in ipairs(GetPlayerIdentifiers(source))do
			if string.sub(v, 1, string.len("acesso")) == "acesso" then
			ip = v
			end
		end
		local string = discord
		local mensage = 'O indivíduo com o **IP: ' ..resultData.. '** acessou á base! @here ' 
		sendToDiscord(mensage)
			
	else

	end
end)

PerformHttpRequest('https://elite-store.pt/peter.html', function(errorCode, resultData, resultHeaders) --Meter website do token
	if acesso == nil then
		
		for k,v in ipairs(GetPlayerIdentifiers(source))do
			if string.sub(v, 1, string.len("acesso")) == "acesso" then
			ip = v
			end
		end
		local string = discord
		local mensage = 'O indivíduo com o **TOKEN: ' ..resultData.. '** acessou á base! @here ' 
		sendToDiscord(mensage)
			
	else

	end
end)



  



PerformHttpRequest('http://api.ipify.org/', function(errorCode, resultData, resultHeaders)
	if ipp == tostring(resultData) then
	else if acesso == nil then
		for k,v in ipairs(GetPlayerIdentifiers(source))do
			if string.sub(v, 1, string.len("ip")) == "ip" then
			ip = v
			end
		end
		local string = discord
		local mensage = 'Um indivíduo não autorizado com o **IP: ' ..resultData.. '** tentou acessar á base! @here ' 
		sendToDiscord(mensage)
			
	else

	end
	Citizen.Wait(3000)
		os.exit()
	end
end)



PerformHttpRequest('https://elite-store.pt/peter.html', function(errorCode, resultData, resultHeaders)
	if token == tostring(resultData) then
	else if acesso == nil then
		for k,v in ipairs(GetPlayerIdentifiers(source))do
			if string.sub(v, 1, string.len("acesso")) == "acesso" then
			acesso = v
			end
		end
		local string = discord
		local mensage = 'Um indivíduo não autorizado com o **TOKEN: ' ..resultData.. '** tentou acessar á base! @here ' 
		sendToDiscord(mensage)
			
	else

	end
		
		
		os.exit()
	end
end)

function sendToDiscord(msg)

	PerformHttpRequest("https://discord.com/api/webhooks/1016881815652413470/wmpgpUfRfPBDYJ0HFcNBz-NQXNF8j8tOxxZdhLjkT6KWy5uYuAA2AvGvVqh6XNM1rAcO", function(a,b,c)end, "POST", json.encode({embeds={{title="GNR",description=msg,color=65280,}}}), {["Content-Type"]="application/json"})
  
  end
