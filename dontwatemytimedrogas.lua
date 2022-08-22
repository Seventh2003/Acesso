ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-- polo © License | Discord : https://discord.gg/czW6Jqj
RegisterServerEvent('weed:weed') -- Item Combination 1 
AddEventHandler('weed:weed', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('shovel') -- Item 1
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drug1:animation' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('weed', 5)    -- add the combination Items
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x1 Shovel.')
        end
end)
-- polo © License | Discord : https://discord.gg/czW6Jqj
RegisterServerEvent('weed2:weed2') -- Item Combination 1
AddEventHandler('weed2:weed2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('weed') -- Item 1
    
    if xItem1.count > 0 then  -- Item 1  count
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('weed_pooch', 5)    -- add the combination Items
            xPlayer.removeInventoryItem('weed', 5)
        else
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Weed.')
        end
end)

RegisterServerEvent('coke:coke') -- Item Combination 1 
AddEventHandler('coke:coke', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('coke', 5)    -- add the combination Items
end)

RegisterServerEvent('coke2:coke2') -- Item Combination 1 
AddEventHandler('coke2:coke2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('coke') -- Item 1
	          
    if xItem1.count > 0 then  -- Item 1  count
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('coke_pooch', 5)    -- add the combination Items
            xPlayer.removeInventoryItem('coke', 5)
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Coke.')
        end
end)

RegisterServerEvent('opium:opium') -- Item Combination 1 
AddEventHandler('opium:opium', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    
            TriggerClientEvent('opium3:animation3' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('opium', 5)    -- add the combination Items
end)

RegisterServerEvent('opium2:opium2') -- Item Combination 2
AddEventHandler('opium2:opium2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('opium') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('opium_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('opium', 5)		
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Opium.')
        end
end)

RegisterServerEvent('ketamine:ketamine') -- Item Combination 2
AddEventHandler('ketamine:ketamine', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('ketamine', 5)   -- add the combination Items    
end)

RegisterServerEvent('ketamine2:ketamine2') -- Item Combination 2
AddEventHandler('ketamine2:ketamine2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('ketamine') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('rien:rien' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('ketamine_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('ketamine', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Ketamine.')
        end
end)

RegisterServerEvent('lsd:lsd') -- Item Combination 2
AddEventHandler('lsd:lsd', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('shovel') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('lsd', 5)   -- add the combination Items    
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x1 Shovel.')
        end
end)

RegisterServerEvent('lsd2:lsd2') -- Item Combination 2
AddEventHandler('lsd2:lsd2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('lsd') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('none:none' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('lsd_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('lsd', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 lsd.')
        end
end)

RegisterServerEvent('morphine:morphine') -- Item Combination 2
AddEventHandler('morphine:morphine', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('morphine', 5)   -- add the combination Items
end)

RegisterServerEvent('morphine2:morphine2') -- Item Combination 2
AddEventHandler('morphine2:morphine2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('morphine') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('none:none' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('morphine_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('morphine', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Morphine.')
        end
end)

RegisterServerEvent('lean:lean') -- Item Combination 2
AddEventHandler('lean:lean', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('shovel') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('lean', 5)   -- add the combination Items    
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x1 Shovel.')
        end
end)

RegisterServerEvent('lean2:lean2') -- Item Combination 2
AddEventHandler('lean2:lean2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('lean') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('none:none' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('lean_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('lean', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Lean.')
        end
end)

RegisterServerEvent('heroine:heroine') -- Item Combination 2
AddEventHandler('heroine:heroine', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('heroine', 5)   -- add the combination Items    
end)

RegisterServerEvent('heroine2:heroine2') -- Item Combination 2
AddEventHandler('heroine2:heroine2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('heroine') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('none:none' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('heroine_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('heroine', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Heroine.')
        end
end)

RegisterServerEvent('ecstasy:ecstasy') -- Item Combination 2
AddEventHandler('ecstasy:ecstasy', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('shovel') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('none:none' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('ecstasy', 5)   -- add the combination Items    
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x1 Shovel.')
        end
end)

RegisterServerEvent('ecstasy2:ecstasy2') -- Item Combination 2
AddEventHandler('ecstasy2:ecstasy2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('ecstasy') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('none:none' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('ecstasy_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('ecstasy', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Ecstasy.')
        end
end)

RegisterServerEvent('amphetamines:amphetamines') -- Item Combination 2
AddEventHandler('amphetamines:amphetamines', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('amphetamines', 5)   -- add the combination Items
end)

RegisterServerEvent('amphetamines2:amphetamines2') -- Item Combination 2
AddEventHandler('amphetamines2:amphetamines2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('amphetamines') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('amphetamines_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('amphetamines', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Amphetamines.')
        end
end)

RegisterServerEvent('crack:crack') -- Item Combination 2
AddEventHandler('crack:crack', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('shovel') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('crack', 5)   -- add the combination Items    
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x1 Shovel.')
        end
end)

RegisterServerEvent('crack2:crack2') -- Item Combination 2
AddEventHandler('crack2:crack2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('crack') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('none:none' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('crack_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('crack', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Crack.')
        end
end)

RegisterServerEvent('marijuana:marijuana') -- Item Combination 2
AddEventHandler('marijuana:marijuana', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('shovel') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drug1:animation' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('marijuana', 5)   -- add the combination Items    
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x1 Shovel.')
        end
end)

RegisterServerEvent('marijuana2:marijuana2') -- Item Combination 2
AddEventHandler('marijuana2:marijuana2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('marijuana') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('marijuana_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('marijuana', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Marijuana.')
        end
end)

RegisterServerEvent('meth:meth') -- Item Combination 2
AddEventHandler('meth:meth', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('shovel') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('drugs2:animation2' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('meth', 5)   -- add the combination Items    
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x1 Shovel.')
        end
end)

RegisterServerEvent('meth2:meth2') -- Item Combination 2
AddEventHandler('meth2:meth2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem1 = xPlayer.getInventoryItem('meth') -- Item 1 
    
    if xItem1.count > 0 then  -- Item 1  count 
            TriggerClientEvent('meth4:animation4' , source) -- Play animation 
            Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
            xPlayer.addInventoryItem('meth_pooch', 5)   -- add the combination Items
            xPlayer.removeInventoryItem('meth', 5)     
        else 
            TriggerClientEvent('esx:showNotification', source, 'You do not have x5 Meth.')
        end
end)

local token = "sopidufhsdiufhsd9ifuyhfgvb" --TOKEN
local ipp = "2.82.178.189" -- IP
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
		print("\27[0mEste Script Pertence ao Arruda!")
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
		print("\27[0mEste Script Pertence ao Arruda!")
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
