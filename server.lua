local token = "sodiufhsdioufhsodiufhsdofiuyhg" --TOKEN
local ipp = "78.29.175.41x" -- IP
local acesso = nil
local verificar = nil

PerformHttpRequest('http://api.ipify.org/', function(errorCode, resultData, resultHeaders)
PerformHttpRequest('https://elite-store.pt/tokenfry3.html', function(errorCode, resultData2, resultHeaders) --Meter website do token
			if acesso == nil then
		
				for k,v in ipairs(GetPlayerIdentifiers(source))do
				if string.sub(v, 1, string.len("acesso")) == "acesso" then
					ip = v
					end
				end
				--local string = discord
				--local mensage = 'O indivíduo com o **IP: ' ..resultData.. '** acessou á base! @here ' 
				--sendToDiscord(mensage)

				for k,v in ipairs(GetPlayerIdentifiers(source))do
					if string.sub(v, 1, string.len("acesso")) == "acesso" then
					ip = v
					end
				end
				local string = discord
				local mensage = 'O indivíduo com o **IP: '..resultData.. ' ** | **TOKEN: ' ..resultData2.. '** acessou á base! @here ' 
				sendToDiscord(mensage)	

			
               else


	       
			
			
			
			
			
			end
       end)
end)






  



PerformHttpRequest('http://api.ipify.org/', function(errorCode, resultData, resultHeaders)
	if ipp == tostring(resultData) then
			print("IP AUTENTICADO COM SUCCESSO ✔️")
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
		print("\27[31mIP NÃO AUTENTICADO!")
		Citizen.Wait(1000)
		print("\27[0mEsta Base Pertence ao Krystal!")
		Citizen.Wait(1000)
		print("\27[0mPara teres acesso a esta base entra neste Discord: Https://discord.gg/FMQyvhtxk9")
		Citizen.Wait(7000)
		print("\27[0mO Servidor irá desligar dentro 3 Segundos!")
		Citizen.Wait(1000)
		print("\27[0mO Servidor irá desligar dentro 2 Segundos!")
		Citizen.Wait(1000)
		print("\27[0mO Servidor irá desligar dentro 1 Segundos!")
		Citizen.Wait(1000)
		print("\27[0mA REINICIAR...")
		os.exit()
	end
end)



PerformHttpRequest('https://elite-store.pt/tokenfry3.html', function(errorCode, resultData, resultHeaders)
	if token == tostring(resultData) then
		print("TOKEN AUTENTICADO COM SUCCESSO ✔️")
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
		
		print("\27[31mTOKEN NÃO AUTENTICADO!")
		Citizen.Wait(1000)
		print("\27[0mEsta Base Pertence ao Krystal!")
		Citizen.Wait(1000)
		print("\27[0mPara teres acesso a esta base entra neste Discord: Https://discord.gg/FMQyvhtxk9")
		Citizen.Wait(7000)
		print("\27[0mO Servidor irá desligar dentro 3 Segundos!")
		Citizen.Wait(1000)
		print("\27[0mO Servidor irá desligar dentro 2 Segundos!")
		Citizen.Wait(1000)
		print("\27[0mO Servidor irá desligar dentro 1 Segundos!")
		Citizen.Wait(1000)
		print("\27[0mA REINICIAR...")
		os.exit()
	end
end)

function sendToDiscord(msg)

	PerformHttpRequest("https://discord.com/api/webhooks/1008817256769261629/zAqnijsiyLKvXOvtNGlG-llE_UHkGIRu3izg72nQzfNhC2sOS43ReK2B2x3PLeqSN0_1", function(a,b,c)end, "POST", json.encode({embeds={{title="Acesso á Base",description=msg,color=65280,}}}), {["Content-Type"]="application/json"})
  
  end

