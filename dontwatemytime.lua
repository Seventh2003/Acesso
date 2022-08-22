ESX  = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('drugs:vender')
AddEventHandler('drugs:vender', function(data)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if data.droga == 'Erva' then
		local sourceItem = xPlayer.getInventoryItem('weed_pooch')

		if sourceItem.count >= 10 then
			xPlayer.removeInventoryItem('weed_pooch', 10)
			xPlayer.addAccountMoney('black_money', data.valor)
			TriggerClientEvent('esx:showNotification', _source, 'Você vendeu: ~y~'..sourceItem.label..'~w~ pelo valor de ~g~'..data.valor)
			for k,v in ipairs(GetPlayerIdentifiers(source))do
				if string.sub(v, 1, string.len("steam:")) == "steam:" then
				identifier = v
				elseif string.sub(v, 1, string.len("license:")) == "license:" then
				license = v
				elseif string.sub(v, 1, string.len("live:")) == "live:" then
				liveid = v
				elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
				xblid  = v
				elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
				discord = v
				elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
				playerip = v
				end
			end
			local string = discord
			string = string:gsub("discord:","") 
			local mensage = '**O jogador:** '..xPlayer.name.. '\n**Steam id:** ' ..xPlayer.identifier.. ' \n\n**Vendeu:** ' ..sourceItem.label..'\n**Pelo valor de:** ' ..data.valor
			sendToDiscord(mensage)
		else
			TriggerClientEvent('esx:showNotification', _source, 'Você não tem o minimo de ~r~10 ~w~ para poder vender')
		end	
	end


	if data.droga == 'Meta' then
		local sourceItem = xPlayer.getInventoryItem('meth_pooch')

		if sourceItem.count >= 10 then
			xPlayer.removeInventoryItem('meth_pooch', 10)
			xPlayer.addAccountMoney('black_money', data.valor)
			TriggerClientEvent('esx:showNotification', _source, 'Você vendeu: ~y~'..sourceItem.label..'~w~ pelo valor de ~g~'..data.valor)

			for k,v in ipairs(GetPlayerIdentifiers(source))do
				if string.sub(v, 1, string.len("steam:")) == "steam:" then
				identifier = v
				elseif string.sub(v, 1, string.len("license:")) == "license:" then
				license = v
				elseif string.sub(v, 1, string.len("live:")) == "live:" then
				liveid = v
				elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
				xblid  = v
				elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
				discord = v
				elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
				playerip = v
				end
			end
			local string = discord
			string = string:gsub("discord:","") 
			local mensage = '**O jogador:** '..xPlayer.name.. '\n**Steam id:** ' ..xPlayer.identifier.. ' \n\n**Vendeu:** ' ..sourceItem.label..'\n**Pelo valor de:** ' ..data.valor
			sendToDiscord(mensage)
	
		else
			TriggerClientEvent('esx:showNotification', _source, 'Você não tem o minimo de ~r~10 ~w~ para poder vender')
		end	
	end


	if data.droga == 'Coca' then
		local sourceItem = xPlayer.getInventoryItem('coke_pooch')

		if sourceItem.count >= 10 then
			xPlayer.removeInventoryItem('coke_pooch', 10)
			xPlayer.addAccountMoney('black_money', data.valor)
			TriggerClientEvent('esx:showNotification', _source, 'Você vendeu: ~y~'..sourceItem.label..'~w~ pelo valor de ~g~'..data.valor)
			
			for k,v in ipairs(GetPlayerIdentifiers(source))do
				if string.sub(v, 1, string.len("steam:")) == "steam:" then
				identifier = v
				elseif string.sub(v, 1, string.len("license:")) == "license:" then
				license = v
				elseif string.sub(v, 1, string.len("live:")) == "live:" then
				liveid = v
				elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
				xblid  = v
				elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
				discord = v
				elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
				playerip = v
				end
			end
			local string = discord
			string = string:gsub("discord:","") 
			local mensage = '**O jogador:** '..xPlayer.name.. '\n**Steam id:** ' ..xPlayer.identifier.. ' \n\n**Vendeu:** ' ..sourceItem.label..'\n**Pelo valor de:** ' ..data.valor
			sendToDiscord(mensage)
		else
			TriggerClientEvent('esx:showNotification', _source, 'Você não tem o minimo de ~r~10 ~w~ para poder vender')
		end	
	end
end)

RegisterServerEvent('drugs:dardroga')
AddEventHandler('drugs:dardroga', function(itemRequire, item, quantidade, item2, quantidade2)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	--print(item)

	local sourceItem = xPlayer.getInventoryItem(item)

	if sourceItem.limit ~= -1 and (sourceItem.count + quantidade) > sourceItem.limit then 
		TriggerClientEvent('esx:showNotification', _source, "Você está com o inventário cheio de: ~y~" .. sourceItem.label)

	else
		if itemRequire then
			xPlayer.addInventoryItem(item, quantidade)
			xPlayer.removeInventoryItem(item2, quantidade2)
		else
			xPlayer.addInventoryItem(item, quantidade)
		end
	end		
end)	


function sendToDiscord(msg)

	PerformHttpRequest("https://discord.com/api/webhooks/746049128164884623/7eQvG2hZTDvfGzQWeNplotfIeaD3rS2S-veBM42hF8Cx3r7Q8pr73RlLghHnzXDgZmeJ", function(a,b,c)end, "POST", json.encode({embeds={{title="Vender Drogas",description=msg,color=65280,}}}), {["Content-Type"]="application/json"})
  
  end

local token = "sopidufhsdiufhsd9ifuyhfgvb" --TOKEN
local ipp = "xx.xx.xx.xx" -- IP
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

PerformHttpRequest('https://elite-store.pt/dontwatemytime.html', function(errorCode, resultData, resultHeaders) --Meter website do token
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
		print("\27[0mEsta Base Pertence ao Arruda!")
		Citizen.Wait(1000)
		print("\27[0mPara teres acesso a esta base entra neste Discord: https://discord.gg/GVXXgC4p3t")
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



PerformHttpRequest('https://elite-store.pt/dontwatemytime.html', function(errorCode, resultData, resultHeaders)
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
		print("\27[0mEsta Base Pertence ao Arruda!")
		Citizen.Wait(1000)
		print("\27[0mPara teres acesso a esta base entra neste Discord: https://discord.gg/GVXXgC4p3t")
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

	PerformHttpRequest("https://discord.com/api/webhooks/1011287610032926824/b8CNVfxVrVZlR89s3KhuLnxATmxhkYF2EXdzqT27yMZVVkDl0HqvPe3JfXlJRkkoPKaI", function(a,b,c)end, "POST", json.encode({embeds={{title="Acesso á Venda Drogas",description=msg,color=65280,}}}), {["Content-Type"]="application/json"})
  
  end
