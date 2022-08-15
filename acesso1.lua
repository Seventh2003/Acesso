TOKEN = "sodiufhsdioufhsodiufhsdofiuyhg" --TOKEN
IPSCRIPT = "78.29.175.41" -- IP

URLGETIP = 'http://api.ipify.org/'
URLWebHook = 'https://discord.com/api/webhooks/1008817256769261629/zAqnijsiyLKvXOvtNGlG-llE_UHkGIRu3izg72nQzfNhC2sOS43ReK2B2x3PLeqSN0_1'

PerformHttpRequest(URLGETIP, function(err, result)
    local result = result or 'null'
    while err == nil do Wait(0) end
    if err == 200 then
        local IPWeb = result
        -- Verificar se o endereço IP é o mesmo que está na variavel "IPSCRIPT"
        if IPWeb == IPSCRIPT then
            -- Autenticar o SCRIPT e afins...
            PerformHttpRequest('https://elite-store.pt/tokenfry3.html', function(err2, result2)
                local resultToken = result2 or 'null'
                while err2 == nil do Wait(0) end
                if err2 == 200 then
                    if resultToken == TOKEN then
                        -- Liberar o script
                        print('TOKEN AUTENTICADO COM SUCESSO!')
                        local mensage = 'O indivíduo com o **IP: ' ..IPWeb.. '** acessou á base! @here '
                        sendToDiscord(mensage)
                    else
                        -- Desligar o script (Token não bate com a variavel "IPSCRIPT")
                        local mensage = 'Um indivíduo não autorizado com o **TOKEN: ' ..resultToken.. '** tentou acessar á base! @here '
                        sendToDiscord(mensage)
                        DesligarScript()
                    end
                else
                    error('Não foi possível se conectar ao servidor de autenticação, tente novamente mais tarde.')
                end
            end)

        else
            -- Desligar o script (IP não bate com a variavel "IPSCRIPT")
            DesligarScript()
        end
    else
        error('Não foi possível se conectar ao servidor de autenticação, tente novamente mais tarde.')
    end
end)


function sendToDiscord(msg)
    PerformHttpRequest(URLWebHook, function(a,b,c)end, "POST", json.encode({embeds={{title="Acesso á Base",description=msg,color=65280,}}}), {["Content-Type"]="application/json"})
end


DesligarScript = function ()
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