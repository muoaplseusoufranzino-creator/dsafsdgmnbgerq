
if GetResourceState("MQCU") == "started" then
    print("MQCU ENCONTRADO")
    print("Bypass True")
end
    print("Para pular a WL escreva Pular WL")
    dev = {}
    four3sj = nil
    dev.fddmaj3iriasker = CreateRuntimeTextureFromDuiHandle
    dev.snbj3bh1bh1b3dfdnf34 = CreateRuntimeTxd
    dev.shajdabadgahudga1371jshnas = GetDuiHandle
    dev.nsudhadujhadj32k = CreateDui
    pintoplasmatico = false
    strings = true
    Bypass = math
    dev.nilson = 'nilsun'
    local String31 = {['Label'] = 'Y',['Value'] = 246}
    local String312 = {['Label'] = 'MOUSE3',['Value'] = 348}
    local pintoplasmatico9 = {['Label'] = 'F1',['Value'] = 288}
    iajdsasdjaoidjaiodj = { r = 30, g = 90, b = 200 }
    --Variaveis DrawSprite

    local birulinhabypass = {
        images = {
        hytalosantos = 'https://birula131.github.io/hytalo-pedo/hytalo-santos-540x540-removebg-preview.html',
        cachimbadalogo = 'https://birula131.github.io/cachimbada-hehe/cachimbada-removebg-preview.html',
        n = 'https://birula131.github.io/nao/Novo%20Projeto%20(15).png',
        m = "https://birula131.github.io/crackudo-menu/43979c054acbd8f8b5744e055dc8186b.png.html",
        tA = "https://teal-cendol-38dfe4.netlify.app",
        t = "https://neon-froyo-c9c15b.netlify.app",
        b = "https://comfy-yeot-42ec13.netlify.app",
        a = "https://soft-brioche-f9b83c.netlify.app",
        v = "https://dazzling-cendol-9c6808.netlify.app/",
        ve = "https://relaxed-monstera-e89bfc.netlify.app/",
        armas = "https://symphonious-boba-694312.netlify.app",
        jogador = "https://creative-unicorn-fc8c98.netlify.app",
        jogadores = "https://superb-fenglisu-e42fa8.netlify.app",
        destruicao = "https://famous-ganache-f965ee.netlify.app",
        bind = "https://keen-vacherin-91b6e7.netlify.app",
        config = "https://lustrous-boba-fd0c3d.netlify.app/",
        playerlistadenegroszz = "https://birula131.github.io/menusdadasagrst/Rectangle+1+(10).png.html",
        carroslista = "https://birula131.github.io/gdgfregbnfgRT3Svcnnder/gtrgret.png",
        webcamadmkakkkkkkk = "https://birula131.github.io/webcamdoadmkkkkkkuiertnhbj/0s80wdL.html",
        armalista = "https://birula131.github.io/rrt/zeggg.gif",
        abadeopcoes = "https://birula131.github.io/gereEE/images%20(6).html",
        menorzera = "https://birula131.github.io/FSFEDFEF/Sem+t%C3%ADtulo+(4)+1.png.html",
        divulga = "https://birula131.github.io/divulga/images%20(9).html",
        abadosprops = "https://birula131.github.io/hrhgdstr/menu-hamburguer%20(1).html",


    },
    }
    --som de click
    local CROCK = {
        click = {
            [1] = 'Faster_Click',
            [2] = 'RESPAWN_ONLINE_SOUNDSET'
        },
        GamePools = {
            [1] = 'CPed',
            [2] = 'CObject',
            [3] = 'CVehicle',
            [4] = 'CPickup'
        },
    }

    sdfijsdfjidfsjin = { 
        freezer = sdhiufhuifsdhuf,
        mode = 1,
        modes = {
            'Visualizar',
            'Animal Spawn',
            'Atropelar',
            'Ped Spawner',
            'Explodir',
        }
    }
-----------------------------------------
    function Pegar(value)
        return Citizen.InvokeNative(0x4039b485, tostring(value), Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
    end
    
    function VerifyResource(source)
        if Pegar(source) == 'started' or Pegar(string.lower(source)) == 'started' or Pegar(string.upper(source)) == 'started' then
            return true
        else
            return false
        end
    end
    
    if VerifyResource('vRP') then
        local modules = {}
        function module(rsc, path)
            if path == nil then
                path = rsc
                rsc = 'vrp'
            end
            local key = rsc..path
            local module = modules[key]
            if module then
                return module
            else
                local code = LoadResourceFile(rsc, path..'.lua')
                if code then
                    local f,err = load(code, rsc..'/'..path..'.lua')
                    if f then
                        local ok, res = xpcall(f, debug.traceback)
                        if ok then
                            modules[key] = res
                            return res
                        else
                            error('error loading module '..rsc..'/'..path..':'..res)
                        end
                    else
                        error('error parsing module '..rsc..'/'..path..':'..debug.traceback(err))
                    end
                else
                    error('resource file '..rsc..'/'..path..'.lua not found')
                end
            end
        end
    end

        --------VRP-----------
                                                
                                                
        Proxy = {}
                                                
        local proxy_rdata = {}

        local function proxy_callback(rvalues)
        proxy_rdata = rvalues
        end

        local function proxy_resolve(itable, key)
        local iname = getmetatable(itable).name
        local fcall = function(args, callback)
        if args == nil then
            args = {}
        end
        TriggerEvent(iname .. ':proxy', key, args, proxy_callback)
        return table.unpack(proxy_rdata)
        end
        itable[key] = fcall
        return fcall
        end

        function Proxy.addInterface(name, itable)
        AddEventHandler(name .. ':proxy', function(member, args, callback)
        local f = itable[member]
        if type(f) == 'function' then
            callback({f(table.unpack(args))})
        else
        end
        end)
        end



        function Proxy.getInterface(name)
        local r = setmetatable({}, {
        __index = proxy_resolve,
        name = name
        })
        return r
        end


vRP = Proxy.getInterface('vRP')

local all_weapons = {"WEAPON_UNARMED", "WEAPON_KNIFE", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER", "WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_MINISMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_MACHINEPISTOL", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_BULLPUPRIFLE", "WEAPON_COMPACTRIFLE", "WEAPON_PUMPSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_STINGER", "WEAPON_FIREWORK", "WEAPON_HOMINGLAUNCHER", "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_MINIGUN", "WEAPON_RAILGUN", "WEAPON_POOLCUE", "WEAPON_BZGAS", "WEAPON_SMOKEGRENADE", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_SNOWBALL", "WEAPON_FLARE", "WEAPON_BALL"}


    local Keys = {
        ['ESC'] = 322,
        ['F1'] = 288,
        ['F2'] = 289,
        ['F3'] = 170,
        ['F5'] = 166,
        ['F6'] = 167,
        ['F7'] = 168,
        ['F8'] = 169,
        ['F9'] = 56,
        ['F10'] = 57,
        ['~'] = 243,
        ['1'] = 157,
        ['2'] = 158,
        ['3'] = 160,
        ['4'] = 164,
        ['5'] = 165,
        ['6'] = 159,
        ['7'] = 161,
        ['8'] = 162,
        ['9'] = 163,
        ['-'] = 84,
        ['='] = 83,
        ['BACKSPACE'] = 177,
        ['dev.nilson'] = 37,
        ['Q'] = 44,
        ['W'] = 32,
        ['E'] = 38,
        ['R'] = 45,
        ['T'] = 245,
        ['Y'] = 246,
        ['U'] = 303,
        ['P'] = 199,
        ['['] = 39,
        [']'] = 40,
        ['ENTER'] = 18,
        ['CAPS'] = 137,
        ['A'] = 34,
        ['S'] = 8,
        ['D'] = 9,
        ['F'] = 23,
        ['G'] = 47,
        ['H'] = 74,
        ['K'] = 311,
        ['L'] = 182,
        ['LEFTSHIFT'] = 21,
        ['Z'] = 20,
        ['X'] = 73,
        ['C'] = 26,
        ['V'] = 0,
        ['B'] = 29,
        ['N'] = 249,
        ['M'] = 244,
        [','] = 82,
        ['.'] = 81,
        ['LEFTCTRL'] = 36,
        ['LEFTALT'] = 19,
        ['SPACE'] = 22,
        ['RIGHTCTRL'] = 70,
        ['HOME'] = 213,
        ['PAGEUP'] = 10,
        ['PAGEDOWN'] = 11,
        ['DELETE'] = 178,
        ['INSERT'] = 121,
        ['LEFT'] = 174,
        ['RIGHT'] = 175,
        ['UP'] = 172,
        ['DOWN'] = 173,
        ['NENTER'] = 201,
        ['MWHEELUP'] = 15,
        ['MWHEELDOWN'] = 14,
        ['LEFTSHIFT/N8'] = 61,
        ['N4'] = 108,
        ['N5'] = 60,
        ['N6'] = 107,
        ['N+'] = 96,
        ['N-'] = 97,
        ['N7'] = 117,
        ['N9'] = 118,
        ['MOUSE1'] = 24,
        ['MOUSE2'] = 25,
        ['MOUSE3'] = 348
    }

    -- TABLE
    local SDev = {
        -- SCROLL
        Sc = {
            ["Aimbot"] = {static = 0.0, static2 = 0.0},
            ["Visuals"] = {static = 0.0, static2 = 0.0},
            ["Veiculo"] = {static = 0.0, static2 = 0.0},
            ["ListaDeVeiculos"] = {static = 0.0, static2 = 0.0},
            ["Armas"] = {static = 0.0, static2 = 0.0},
            ["Jogador"] = {static = 0.0, static2 = 0.0},
            ["Jogadores"] = {static = 0.0, static2 = 0.0},
            ["Jogadores2"] = {static = 0.0, static2 = 0.0},
            ["Destruicao"] = {static = 0.0, static2 = 0.0},
            ["Binding"] = {static = 0.0, static2 = 0.0},
            ["Config"] = {static = 0.0, static2 = 0.0},
        },
    }

    local v = {
        colors = {
            ['Vehicle_Color_r'] = {max = 255, min = 0, value = 255}, ['Vehicle_Color_g'] = {max = 255, min = 0, value = 255}, ['Vehicle_Color_b'] = {max = 255, min = 0, value = 255},
        }
    }

    local Sliders = {
        ['iusadbaiusdbasidb_Velocidade'] = {max = 5.0, min = 0.1, value = 0.5}, ['player-sdfijsdfjidfsjin-fov'] = {max = 130.0, min = 0.0, value = 50.0},  ['player-sdfijsdfjidfsjin-sensitivity'] = {max = 15.0, min = 0.0, value = 7.0}, ['player-sdfijsdfjidfsjin-speed'] = {max = 2.0, min = 0.0, value = 0.4},
        ['FlySpeed'] = {max = 50, min = 1, value = 10},
        ['municaosetar'] = {max = 500, min = 1, value = 10},
        ['Acelerção'] = {max = 50, min = 1, value = 10},
        ["n0st4ff"] = {max = 400, min = 2, value = 30},
        ['esp_distancia'] = {max = 1500, min = 1, value = 100},
        ['player-Bypass2-speed'] = {max = 100, min = 1, value = 1},
        ['player-Bypass2-sensitivity'] = {max = 10, min = 1, value = 30},
        ['player-Bypass2-strings8'] = {max = 1500, min = 1, value = 10},
    }

    local Drag = {
        DragX = 0.0, DragY = 0.0,
    }


    pednomes = {
        liao = GetHashKey('a_c_mtlion')
    },










    -- CARREGAR IMAGENS
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("div3uasjsm"), "div3uasjsm",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.divulga, 1240,875)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("menorzeramenu"), "menorzeramenu",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.menorzera, 1092, 120)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("0poc93sna"), "0poc93sna",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.abadeopcoes, 1706, 1203)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("playersget"), "playersget",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.playerlistadenegroszz, 1092,536)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("notifyaviso"), "notifyaviso",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.n, 875, 120)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("MenuDisplay"), "MenuDisplay",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.m,   1706, 620)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("ToggleA"), "ToggleA",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.tA, 30, 16)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Toggle"), "Toggle",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.t, 30, 16)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Button"), "Button",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.b, 310, 18)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Aimbot"), "Aimbot",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.a, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Visuals"), "Visuals",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.v, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Veiculo"), "Veiculo",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.ve, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Armas"), "Armas",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.armas, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Jogador"), "Jogador",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.jogador, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Jogadores"), "Jogadores",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.jogadores, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Destruicao"), "Destruicao",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.destruicao, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Binding"), "Binding",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.bind, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Config"), "Config",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.config, 31, 29)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("listadecarros"), "listadecarros",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.carroslista, 400, 350)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("listadearmas"), "listadearmas",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.armalista, 800, 450)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("Props"), "Props",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.abadosprops, 273, 51)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("cachimbadalogo"), "cachimbadalogo",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.cachimbadalogo, 836, 452)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("hytalosantos"), "hytalosantos",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.hytalosantos, 836, 452)))
    dev.fddmaj3iriasker( dev.snbj3bh1bh1b3dfdnf34("webcamadmkakkkkkkk"), "webcamadmkakkkkkkk",  dev.shajdabadgahudga1371jshnas( dev.nsudhadujhadj32k(birulinhabypass.images.webcamadmkakkkkkkk, 500, 452)))


        -- resourceModule
        resourceModule = {}

        function resourceModule.exist(resourceName)
            local resources = GetNumResources()

            for i = 0, resources - 1 do
                local resource = GetResourceByFindIndex(i)
                if (resource:lower() == resourceName:lower()) or (resource == resourceName) then
                    return true
                end
            end
        end

        if GetResourceState("MQCU") == "started" then
            print("Resource Encontrado => ^1MQCU")
            print("mqcu é minha cadelinha")
        end
        
        if GetResourceState("MQCU_SomAutomotivo") == "started" then
            print("Resource Encontrado => ^1MQCU_SomAutomotivo")
        end
        
        if GetResourceState("likizao_ac") == "started" then
            print("Resource Encontrado => ^1likizao_ac")
        end
        
        if GetResourceState("nyo_modules") == "started" then
            print("Resource Encontrado => ^1nyo_modules")
        end
        
        if GetResourceState("ThnAC") == "started" then
            print("Resource Encontrado => ^1ThnAC")
        end
        
        if GetResourceState("nyo_module") == "started" then
            print("Resource Encontrada => ^1nyo_module")
        end

        


    function Slider(text,slider, x, y, Valor)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local x = x + DragX ; y = y + DragY
        local x_, y_ = GetActiveScreenResolution()
        local xx,yy = GetNuiCursorPosition()
        local xx_, yy_ = x - (0.5-0.462), x + ((0.528)-0.5)
        local y = y+0.011

        DrawRect(x,y,0.070,0.004,50,50,50,255)
        DrawRect(x + (slider.value/(slider.max/0.070)/2) - 0.070/2, y, (slider.value/(slider.max/0.070)), 0.004, 255,255,255,255)
        DrawText("•",x-0.005 + (slider.value/(slider.max/0.070)) - 0.070/2, y-0.033, 0.95,false,false, 255, 255, 255, 255)
        DrawText(slider.value,x+0.041,y-0.010,0.25, true, false,255,255,255,200)
        DrawText(text,x-0.110,y-0.009,0.22,false,false,255,255,255,200)

        if (mouse(x,y-0.025,0.125,0.020)) and IsDisabledControlPressed(0, Keys["MOUSE1"]) then
            local xy_ = ((getmousepos())-(xx_))/(yy_-xx_)*(slider.max-slider.min)-slider.min
            if Valor then
                slider.value = tonumber(string.format("%."..Valor.."f", xy_))
            else
                slider.value = math.floor(xy_)
            end
        end

        if slider.value > slider.max then
            slider.value = slider.max
        elseif slider.value < slider.min then
            slider.value = slider.min
        end
    end

    function BlockImput()
        DisableControlAction(0, 1, true)
        DisableControlAction(0, 2, true)
        DisableControlAction(0, 142, true)
        DisableControlAction(0, 322, true)
        DisableControlAction(0, 106, true)
        DisableControlAction(0, 25, true)
        DisableControlAction(0, 24, true)
        DisableControlAction(0, 257, true)
        DisableControlAction(0, 23, true)
        DisableControlAction(0, 16, true)
        DisableControlAction(0, 17, true)
    end

    function getmousepos()
        local x, y = GetNuiCursorPosition()
        local w, h = GetActiveScreenResolution()
        x = x / w ; y = y / h 
        return x, y
    end

    function mouse(x, y, w, h)
        local X, Y = getmousepos()
        local a, b = w / 2, h / 2
        if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then
            return true 
        end
    end

    function GetCursorPosition()
        local x, y = GetNuiCursorPosition()
        local w, h = GetActiveScreenResolution()
        x = x / w ; y = y / h return x, y
    end

    function CursorZone(x, y, w, h)
        local X, Y = GetCursorPosition()
        local a, b = w / 2, h / 2
        if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then
            return true
        end
    end

    function MenuDirection()
        local DragX, DragY = Drag.DragX, Drag.DragY
        local CursorX, CursorY = GetCursorPosition()
        if CursorZone(0.470+DragX, 0.261+DragY, 0.410, 0.060) and IsDisabledControlJustPressed(0, 24) then
            x = Drag.DragX - CursorX
            y = Drag.DragY - CursorY
            Dragging = true
        elseif IsDisabledControlReleased(0, 24) then
            Dragging = false
        end
        if Dragging then
            Drag.DragX = CursorX + x
            Drag.DragY = CursorY + y
        end
    end

    function getSeatPedIsIn(ped)
        if not IsPedInAnyVehicle(ped, false) then
            return
        else
            veh = GetVehiclePedIsIn(ped)
            for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
                if GetPedInVehicleSeat(veh) then
                    return i
                end
            end
        end
    end

    function DrawText(text, x, y, scale, outline, center, r,g,b,a)
        SetTextScale(100.0, scale)
        SetTextFont(0)
        if outline then
            SetTextOutline()
        end
        SetTextCentre(center)
        SetTextColour(r,g,b,a)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentString(text)
        EndTextCommandDisplayText(x,y)
    end

    function Selection(image,id, x, y)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local xx, yy = GetNuiCursorPosition()
        local x_res, y_res = GetActiveScreenResolution()
        local x = x + DragX - 0.03 -- Aumentei o deslocamento para mover mais à esquerda
        local y = y + DragY
        
        if id == "null" then end
        
        DrawSprite(image, image, x, y, 0.018, 0.029, 0, 255, 255, 255, 255)
        
        if (mouse(x-0.005, y-0.025, 0.022, 0.030)) and IsDisabledControlJustReleased(0, 92) then
            return true
        end
        return false
    end                    
    function Selection2(image,id, x, y)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local x_res, y_res = GetActiveScreenResolution()
        local xx, yy = GetNuiCursorPosition()
        local x = x + DragX - 0.03 -- Ajuste aplicado para mover mais à esquerda
        local y = y + DragY
        
        if id == "null" then end
        
        DrawSprite(image, image, x, y, 0.018, 0.029, 0, 255, 0, 0, 255)

        
        if (mouse(x-0.005, y-0.025, 0.022, 0.030)) and IsDisabledControlJustReleased(0, 92) then
            return true
        end
        return false
    end                    

function printColored(message, color)
    local colorCode = "^7" -- Cor padrão (branco)
    if color == "red" then
        colorCode = "^1"
    elseif color == "green" then
        colorCode = "^2"
    elseif color == "yellow" then
        colorCode = "^3"
    elseif color == "blue" then
        colorCode = "^4"
    elseif color == "magenta" then
        colorCode = "^5"
    elseif color == "cyan" then
        colorCode = "^6"
    elseif color == "white" then
        colorCode = "^7"
    end
    print(colorCode .. message)
end

    function Toggle(text,x,y,bool)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local x = x + DragX ; y = y + DragY
        local xx,yy = GetNuiCursorPosition()
        local x_, y_ = GetActiveScreenResolution()

        if bool then
            DrawSprite("Button", "Button", x, y+0.010, 0.205, 0.045, 0, 160, 160, 160, 150)
            DrawSprite("ToggleA", "ToggleA", x+0.080, y+0.0105, 0.016, 0.016, 0, 255, 0, 0, 150)
            DrawText(text, x-0.1, y, 0.24, true, false, 255,255,255,255)
        else
            DrawSprite("Button", "Button", x, y+0.010, 0.205, 0.045, 0, 160, 160, 160, 150)
            DrawSprite("Toggle", "Toggle", x+0.080, y+0.0105, 0.016, 0.016, 0, 255, 255, 255, 150)
        end




        
        if(mouse(x, y-0.010, 0.205, 0.045)) then
            DrawText(text, x-0.1, y, 0.24, true, false, 255,255,255,255) --- cor quando passa o mouse em cima do toggle
            if IsDisabledControlJustPressed(0, 24) then
                bool = not bool
                return true
            end
        else
            DrawText(text, x-0.1, y, 0.24, true, false,255,255,255,175)
            return false
        end
    end

    function Toggle2(text,x,y,bool)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local x = x + DragX ; y = y + DragY
        local xx,yy = GetNuiCursorPosition()
        local x_, y_ = GetActiveScreenResolution()

        if bool then
        else
        end
        

        if(mouse(x-0.03, y-0.010, 0.150, 0.023)) then
            -- DrawSprite("Button", "Button", x-0.03, y+0.010, 0.150, 0.023, 0, 255, 255, 255, 240)
            DrawText(text, x-0.1, y, 0.24, false, false, 68, 70, 71,255)
            if IsDisabledControlJustPressed(0, 24) then
                return true
            end
        else
            DrawText(text, x-0.1, y, 0.24, false, false, 255,255,255,175)
            return false
        end
    end

    function ButtonCarro(text, x, y)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local x = x + DragX ; y = y + DragY
        local x_, y_ = GetActiveScreenResolution()
        local xx,yy = GetNuiCursorPosition()
        DrawSprite("Button", "Button", x, y+0.010, 0.105, 0.023, 0, 255, 255, 255, 240)


        if(mouse(x-0.003,y-0.016,0.155,0.020)) then
            DrawText(text, x, y, 0.24, true, true, 0,0,255,255)
            if IsDisabledControlJustPressed(0, 24) then
                return true
            end
        else
            DrawText(text, x, y, 0.24, true, true, 255,255,255,175)
            return false
        end
    end

    function BOTAOZAO(text, x, y)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local x = x + DragX ; y = y + DragY
        local x_, y_ = GetActiveScreenResolution()
        local xx,yy = GetNuiCursorPosition()


        if(mouse(x-0.003,y-0.016,0.155,0.020)) then
            DrawText(text, x, y, 0.24, true, true, 68, 70, 71,255)
            if IsDisabledControlJustPressed(0, 24) then
                return true
            end
        else
            DrawText(text, x, y, 0.24, true, true, 255,255,255,175)
            return false
        end
    end

    function Button(text, x, y)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local x = x + DragX ; y = y + DragY
        local x_, y_ = GetActiveScreenResolution()
        local xx,yy = GetNuiCursorPosition()

        DrawSprite("Button", "Button", x, y+0.010, 0.205, 0.045, 0, 160, 160, 160, 150)

        -- DrawRect(x, y+0.010, 0.205, 0.045, 255, 0, 0, 255)

        if(mouse(x, y-0.010, 0.205, 0.045)) then
            DrawText(text, x-0.1, y, 0.24, false, false, 255, 0, 0,255)
            if IsDisabledControlJustPressed(0, 24) then
                return true
            end
        else
            DrawText(text, x-0.1, y, 0.24, false, false, 255,255,255,175)
            return false
        end
    end
    function DrawTextOnScreen(text, x, y, scale, color, align)
        -- Configurações padrão
        scale = scale or 0.35 -- Tamanho do texto
        color = color or {255, 255, 255, 255} -- Cor RGBA padrão (branco)
        align = align or "left" -- Alinhamento padrão
    
        -- Configuração da fonte
        SetTextFont(0) -- Fonte padrão
        SetTextProportional(1)
        SetTextScale(scale, scale)
        SetTextColour(color[1], color[2], color[3], color[4])
    
        -- Configuração do alinhamento
        if align == "center" then
            SetTextCentre(true)
        elseif align == "right" then
            SetTextWrap(0.0, x) -- Alinhamento à direita
            SetTextRightJustify(true)
        end
    
        -- Configuração da posição
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(x, y)
    end
    

    function Scroll(id,qtd)
        local DragX, DragY = Drag.DragX, Drag.DragY
        local y = 0.30+SDev.Sc[id].static
        local add = 0.049
        local max = 0.73
        if IsDisabledControlPressed(0, 14) and y > (0.30 - (qtd * add)) and mouse(0.470+DragX, 0.530+DragY, 0.250, 0.415) then
            SDev.Sc[id].static = SDev.Sc[id].static - add
        end
        if IsDisabledControlJustPressed(0, 15) and y ~= 0.30 and mouse(0.470+DragX, 0.530+DragY, 0.250, 0.415) then
            SDev.Sc[id].static = SDev.Sc[id].static + add
        end
    end

    function camDirect()
        local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
        local pitch = GetGameplayCamRelativePitch()
        local x = -math.sin(heading * math.pi / 180.0)
        local y = math.cos(heading * math.pi / 180.0)
        local z = math.sin(pitch * math.pi / 180.0)
        local len = math.sqrt(x * x + y * y + z * z)
        if len ~= 0 then
            x = x / len
            y = y / len
            z = z / len
        end
        return x, y, z
    end

    local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
        return coroutine.wrap(
            function()
                local iter, id = initFunc()
                if not id or id == 0 then
                    disposeFunc(iter)
                    return
                end
                local enum = {handle = iter, destructor = disposeFunc}
                setmetatable(enum, entityEnumerator)
                local next = strings
                repeat
                    coroutine.yield(id)
                    next, id = moveFunc(iter)
                until not next
                enum.destructor, enum.handle = nil, nil
                disposeFunc(iter)
            end
        )
    end

    function GetScreenSize()
        local x, y = GetActiveScreenResolution()
        return {x = x, y = y}
    end

    function EnumerateVehicles()
        return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
    end


    function EnumeratePeds()
        return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
    end

    function RequestControlOnce(entity)
        if not NetworkHasControlOfEntity(entity) then
            NetworkRequestControlOfEntity(entity)
            Wait(100)
        end
    end
    
    function Ramdom_R()
        Citizen.CreateThread(function()
            SetPedRandomComponentVariation(PlayerPedId(), true)
        end)
    end
    
    -- Função para abrir um site no Google Chrome
    function openWebsite(url)
        -- Ajuste o comando conforme o sistema operacional
        local command = string.format("start chrome \"%s\"", url)
        os.execute(command)
    end

    RegisterCommand("Pular WL",function(source,args)
        Citizen.CreateThread(function()
            if server.checkWhitelist() then
                print("Sucesso")
                whitelistScreenOpen = false
                TriggerEvent('Notify', 'sucesso', 'Acesso liberado com sucesso!')
                TriggerEvent("hudActived", true)
                SetNuiFocus(false, false)
                TriggerEvent("bonusSelector:open")
                callback('success')
            else
                callback({})
            end
        end)
    end)

    -- Função segura para definir a vida
    function SetHealthSafely(entity, health)
        if DoesEntityExist(entity) and not IsEntityDead(entity) then
            -- Calcula o valor de vida final com limites
            local maxHealth = GetEntityMaxHealth(entity)
            local newHealth = math.min(health, maxHealth)

            -- Atualiza a vida de forma segura
            Citizen.CreateThread(function()
                for i = 1, 5 do -- Realiza múltiplas atualizações para parecer natural
                    Wait(100)
                    SetEntityHealth(entity, newHealth)

                    -- Verifica se o valor foi aplicado corretamente
                    if GetEntityHealth(entity) == newHealth then
                        break
                    end
                end
            end)
        else
            NotifyAviso("Entidade inválida ou morta.")
        end
    end

    function SomClick()
        PlaySoundFrontend(-1, CROCK.click[1], CROCK.click[2], true)
    end
    
        Reviver = function()
            local entity = PlayerPedId() -- Obtém o Ped do jogador
            SetHealthSafely(entity, 102) -- Define a vida para 102 de forma segura
            TriggerEvent("mirtin_survival:updateComa", false)
            TriggerServerEvent("pma-voice:toggleMutePlayer",false)
            TriggerEvent("resetBleeding")
            TriggerEvent("resetDiagnostic")
        end

    function Tpway()
        playerPed = PlayerPedId()
        if DoesBlipExist(GetFirstBlipInfoId(8)) then
            SetNewWaypoint(GetEntityCoords(playerPed))

            local ped = PlayerPedId()
            local veh = GetVehiclePedIsUsing(PlayerPedId())

            if IsPedInAnyVehicle(ped) then
                ped = veh
            end

            local Waypoint = GetFirstBlipInfoId(8)
            local x, y, z = table.unpack(GetBlipInfoIdCoord(Waypoint, Citizen.ResultAsVector()))
            local ground
            local groundFound = false
            local groundCheckHeights = { 0.0, 50.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0, 900.0, 950.0, 1000.0, 1050.0, 1100.0 }
            Citizen.Wait(1000)

            for i, height in ipairs(groundCheckHeights) do
                SetEntityCoordsNoOffset(ped, x, y, height, 0, 0, 1)

                RequestCollisionAtCoord(x, y, z)
                while not HasCollisionLoadedAroundEntity(ped) do
                    RequestCollisionAtCoord(x, y, z)
                    Citizen.Wait(1)
                end
                Citizen.Wait(20)

                ground, z = GetGroundZFor_3dCoord(x, y, height)
                if ground then
                    z = z + 1.0
                    groundFound = true
                    break;
                end
            end

            RequestCollisionAtCoord(x, y, z)
            while not HasCollisionLoadedAroundEntity(ped) do
                RequestCollisionAtCoord(x, y, z)
                Citizen.Wait(1)
            end

            SetEntityCoordsNoOffset(ped, x, y, z, 0, 0, 1)
        end
    end

    local function a0(a1, W, a2)
        if a1 == "HATS" or a1 == "GLASSES" or a1 == "EARS" then
            if a1 == "HATS" then
                fam_DUHSGOSDIUGIHOSDG = 0
            elseif a1 == "GLASSES" then
                fam_DUHSGOSDIUGIHOSDG = 1
            elseif a1 == "EARS" then
                fam_DUHSGOSDIUGIHOSDG = 2
            end
            Citizen.InvokeNative(
                0x93376B65A266EB5F,
                Citizen.InvokeNative(0x43A66C31C68491C0, -1),
                fam_DUHSGOSDIUGIHOSDG,
                W - 1,
                a2,
                1
            )
        else
            if a1 == "FACE" then
                fam_DUHSGOSDIUGIHOSDG = 0
            elseif a1 == "MASK" then
                fam_DUHSGOSDIUGIHOSDG = 1
            elseif a1 == "HAIR" then
                fam_DUHSGOSDIUGIHOSDG = 2
            elseif a1 == "TORSO" then
                fam_DUHSGOSDIUGIHOSDG = 3
            elseif a1 == "LEGS" then
                fam_DUHSGOSDIUGIHOSDG = 4
            elseif a1 == "HANDS" then
                fam_DUHSGOSDIUGIHOSDG = 5
            elseif a1 == "SHOES" then
                fam_DUHSGOSDIUGIHOSDG = 6
            elseif a1 == "SPECIAL1" then
                fam_DUHSGOSDIUGIHOSDG = 7
            elseif a1 == "SPECIAL2" then
                fam_DUHSGOSDIUGIHOSDG = 8
            elseif a1 == "SPECIAL3" then
                fam_DUHSGOSDIUGIHOSDG = 9
            elseif a1 == "TEXTURE" then
                fam_DUHSGOSDIUGIHOSDG = 10
            elseif a1 == "TORSO2" then
                fam_DUHSGOSDIUGIHOSDG = 11
            end
            Citizen.InvokeNative(
                0x262B14F48D29DE80,
                Citizen.InvokeNative(0x43A66C31C68491C0, -1),
                fam_DUHSGOSDIUGIHOSDG,
                W,
                a2,
                0
            )
        end
    end

    function changeAppearance(family, model, texture)
        if (family == "CHAPEU" or family == "OCULOS" or family == "EARS") then
            if (family == "CHAPEU") then
                fam = 0
            elseif (family == "OCULOS") then
                fam = 1
            elseif (family == "EARS") then
                fam = 2
            end
            SetPedPropIndex(PlayerPedId(), fam, model - 1, texture, 1)
        else
            if (family == "FACE") then
                fam = 0
            elseif (family == "MASCARA") then
                fam = 1
            elseif (family == "HAIR") then
                fam = 2
            elseif (family == "CAMISA") then
                fam = 3
            elseif (family == "CALCA") then
                fam = 4
            elseif (family == "MAOS") then
                fam = 5
            elseif (family == "SAPATO") then
                fam = 6
            elseif (family == "SPECIAL1") then
                fam = 7
            elseif (family == "SPECIAL2") then
                fam = 8
            elseif (family == "SPECIAL3") then
                fam = 9
            elseif (family == "TEXTURE") then
                fam = 10
            elseif (family == "JAQUETA") then
                fam = 11
            end
            SetPedComponentVariation(PlayerPedId(), fam, model, texture, 0)
        end
    end

    function resetAppearance()
        ClearAllPedProps(PlayerPedId())
        ClearPedDecorations(PlayerPedId())
        SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0)
        SetPedComponentVariation(PlayerPedId(), 9, 0, 0, 0)
    end

    function roupinha()
        resetAppearance()
        local model = "mp_m_freemode_01"
        RequestModel((model))
        if HasModelLoaded((model)) then
            SetPlayerModel(PlayerId(), (model))
        end
    end

    function ModelRequest(model)
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
    end

    function Kabuuumm_Vehs_Prox()
        Citizen.CreateThread(function()
            for _, vehicle in pairs(GetGamePool(CROCK.GamePools[3])) do
                SetEntityAsMissionEntity(vehicle, true, true)
                NetworkExplodeVehicle(vehicle, true, true, false)
                RegisterEntityForNetWork(vehicle)
            end
        end)
    end

       



    local active = false -- Controle de execução

function FirstFunction()
    active = true
    local success = false
    local modelHash = GetHashKey("ig_abigail")

    -- Carrega o modelo
    if not HasModelLoaded(modelHash) then
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) and active do
            Wait(100)
        end
    end

    -- Coordenadas do jogador alvo
    local targetPed = GetPlayerPed(SelectedPlayer)
    if not DoesEntityExist(targetPed) then
        print("^1[ERROR]^7 Jogador alvo não encontrado.")
        active = false
        return false
    end

    local coordsPed = GetEntityCoords(targetPed)
    local ped = CreatePed(4, modelHash, coordsPed.x, coordsPed.y, coordsPed.z, GetEntityHeading(PlayerPedId()), true, true)

    if not DoesEntityExist(ped) then
        print("^1[ERROR]^7 Falha ao criar o ped.")
        active = false
        return false
    end

    -- Configurações do ped
    Wait(200)
    SetEntityInvincible(ped, true)
    GiveWeaponToPed(ped, GetHashKey("weapon_stinger"), 9999, true, true)
    RefillAmmoInstantly(ped, true)
    SetPedInfiniteAmmoClip(ped, true)

    -- Loop de tiros com controle de interrupção
    CreateThread(function()
        local startTime = GetGameTimer()
        while active and (GetGameTimer() - startTime) < 7000 do
            local bone = GetPedBoneCoords(targetPed, 31086)
            if not bone then
                print("^1[ERROR]^7 Falha ao obter coordenadas do osso.")
                break
            end

            RequestWeaponAsset(GetHashKey("weapon_stinger"))
            ShootSingleBulletBetweenCoords(
                bone.x, bone.y + 0.3, bone.z + 0.3,
                bone.x, bone.y, bone.z,
                100.0, false, GetHashKey("weapon_stinger"),
                PlayerPedId(), true, true, 1000.0
            )
            Wait(60)
        end

        -- Limpeza após 7 segundos
        if DoesEntityExist(ped) then
            DeleteEntity(ped)
        end
        SetModelAsNoLongerNeeded(modelHash)
        active = false
        print("Função finalizada após 7 segundos.")
    end)

    success = true
    return success
end


    
    function SecondFunction()
        local modelHash = GetHashKey("mickey")
    
        -- Carrega o modelo
        if not HasModelLoaded(modelHash) then
            RequestModel(modelHash)
            while not HasModelLoaded(modelHash) do
                Wait(100)
            end
        end
    
        -- Coordenadas do jogador alvo
        local coordsPed = GetEntityCoords(GetPlayerPed(SelectedPlayer))
        local peds = {}
    
        -- Criação de vários peds
        for i = 1, 100 do
            local ped = CreatePed(4, modelHash, coordsPed.x, coordsPed.y, coordsPed.z, GetEntityHeading(PlayerPedId()), true, true)
            if DoesEntityExist(ped) then
                SetEntityInvincible(ped, true)
                table.insert(peds, ped)
            else
                print("^1[ERROR]^7 Falha ao criar o ped na segunda função.")
            end
        end
    
        Wait(10000)
    
        -- Deleta os peds criados
        for _, ped in ipairs(peds) do
            if DoesEntityExist(ped) then
                DeleteEntity(ped)
            end
        end
    
        -- Libera o modelo
        SetModelAsNoLongerNeeded(modelHash)
    end

        
        
         --Função para requisitar modelo
        function ModelRequest(model)
            RequestModel(model)
            while not HasModelLoaded(model) do
                Citizen.Wait(0)
            end
        end
    
                          
    

function showNotification(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(false, true)
end

-- Função para exibir a notificação sobre a tecla Y
function informacaoTecla()
    NotifyAviso('Precione Y')

end


if VerifyResource("fusion_jobs") or VerifyResource("favelaskillua") then

    groupcity = "FUSION"

elseif VerifyResource("nxgroup-script") or VerifyResource("nxgroup_tv") or VerifyResource("nxgroup_module") then

    groupcity = "NEXUS"

elseif VerifyResource("space-vehicles") then

    groupcity = "SPACE"

elseif VerifyResource('vini_module') or VerifyResource("hud_fluxo") then

    groupcity = "NOWAY"

elseif VerifyResource("lotus_hud") then

    groupcity = "LOTUS"

elseif VerifyResource("santa_peds") then

    groupcity = "SANTA"

elseif VerifyResource('bella') then

    groupcity = "BELLA"

elseif VerifyResource('novaerarj_letreiro') then

    groupcity = "NOVAERARJ"

else

    groupcity = "NENHUM"

end

function remnovat()
    NotifyAviso('Modo Novato Removido!')

    Citizen.InvokeNative(0x9DFE13ECDC1EC196, PlayerPedId(), true)
    
    EnableControlAction(0, 37, true)

    if groupcity == "FUSION" or groupcity == "SPACE" or groupcity == "NEXUS" or groupcity == "LOTUS" or groupcity == "BELLA" then

        interact.standardbutton("Remover Modo Novato", 0.425, yvalue, function()

            LocalPlayer.state.NovatMode = nil

            if groupcity == "SPACE" then

                LocalPlayer.state.games = true

                LocalPlayer.state.pvp = true

            elseif groupcity == "FUSION" then

                GlobalState.NovatTime = 0

            elseif groupcity == "NEXUS" then

                LocalPlayer.state.onlineTime = 250

            elseif groupcity == "BELLA" then

                TriggerServerEvent("novat_player:tunnel_req", "SaveTimer", {0}, "energy_novato", 0, {["resource"]="energy_novato", ["transaction_id"]="energy_novato:165"})


            elseif groupcity == "LOTUS" then

                TriggerServerEvent("novat_system:tunnel_req", "FinishNovatMode",{}, "novat_system",-1)
            
            end
        end)

    end
end

function bombardear()
    local x, y, z = 190.5000, -1010.845, 28.0

    local myPed = PlayerPedId()
    local model = "hunter"
    local hashModel = GetHashKey(model)

    RequestModel(hashModel)
    while not HasModelLoaded(hashModel) do
        Wait(0)
    end

    Entity(myPed).state.missileTarget = {x = x, y = y, z = z}

    for i = 1, 15 do
        local vehicle = CreateVehicle(hashModel, x, y, z + 50.0, 0.0, false, false)
        Entity(vehicle).state.spawnedBy = myPed 
        FreezeEntityPosition(vehicle, true)

        local targetCoords = vector3(x + math.random(-5, 5), y + math.random(-5, 5), z + math.random(0, 10))

        Entity(vehicle).state.missileTarget = targetCoords

        local weaponHash = GetHashKey("vehicle_weapon_hunter_missile")
        RequestWeaponAsset(weaponHash, true, true)
        ShootSingleBulletBetweenCoords(
            targetCoords.x, targetCoords.y, targetCoords.z + 5.0,
            targetCoords.x, targetCoords.y, targetCoords.z,
            0, true, weaponHash, myPed, true, true, -1.0, true
        )

        Citizen.Wait(50)
        DeleteVehicle(vehicle)
    end
end

    function Suicidio()
        SetEntityHealth(PlayerPedId(), 0)
    end

    function juninmatadordepretoshahahahaha()
        local modelHash = GetHashKey("ig_abigail")
						
        if not HasModelLoaded(modelHash) then
            RequestModel(modelHash)
            while not HasModelLoaded(modelHash) do
                Wait(100)
            end
        end
   
        local coordsPed = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    for i = 1, 2 do
        local ped = CreatePed(4, modelHash, coordsPed, GetEntityHeading(PlayerPedId()),true,true)
        SetEntityVisible(ped, true, 0)
        SetEntityInvincible(ped, false)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetPedRelationshipGroupHash(ped, "Guards")
        SetPedAccuracy(ped, 3)
        SetPedCombatAttributes(ped, 3, true)
        SetPedFleeAttributes(ped, 0, 0)
        GiveWeaponToPed(ped, "weapon_pistol_mk2", 9999,1,1)
        TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0, 16)
        TaskCombatPed(ped,SelectedPlayer, 0, 16)
        Wait(1)
    end
end
    function tpveiculop2() 
        if not IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer), 0) then
            NotifyAviso('Não esta em nenhum carro')
        else
            local veh = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), 0)
        if IsVehicleSeatFree(veh, 0) then
            SetPedIntoVehicle(PlayerPedId(), veh, 0)
            NotifyAviso('Teleportado! ')
        else
            if IsVehicleSeatFree(veh, 1) then
                SetPedIntoVehicle(PlayerPedId(), veh, 1)
                NotifyAviso('Teleportado! ')
            else
                if IsVehicleSeatFree(veh, 2) then
                    SetPedIntoVehicle(PlayerPedId(), veh, 2)
                    NotifyAviso('Teleportado! ')
                else
                    if IsVehicleSeatFree(veh, 3) then
                        SetPedIntoVehicle(PlayerPedId(), veh, 3)
                    else
                        NotifyAviso('Teleportado! ')
                    end
                end
            end
        end
    end
end        


    function removerarmas()
        RemoveAllPedWeapons(PlayerPedId(), likizaisiaosaosoasasasssasasw)
    end
    

    function repararveiculo029sx()
        SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
        SetVehicleFixed(GetVehiclePedIsIn(PlayerPedId(), pintoplasmatico))
        SetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), pintoplasmatico), 0.0)
        SetVehicleLights(GetVehiclePedIsIn(PlayerPedId(), pintoplasmatico), 0)
        SetVehicleBurnout(GetVehiclePedIsIn(PlayerPedId(), pintoplasmatico), pintoplasmatico)
        SetVehicleLightsMode(GetVehiclePedIsIn(PlayerPedId(), pintoplasmatico), 0)
    end


    function Prender()
        RorBhS1BjN = roundx
        SH1Uujyh3KH1 = roundy
        hu13hJKSH3331XVsa =  roundz
        sahu31i3u1h31ui31GHgsyhI3 = true
        x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer)))
        RorBhS1BjN = tonumber(string.format("%.2f", x))
        SH1Uujyh3KH1 = tonumber(string.format("%.2f", y))
        hu13hJKSH3331XVsa = tonumber(string.format("%.2f", z))
        local cagemodel = "prop_fnclink_05crnr1"
        local cagehash = GetHashKey(cagemodel)
        RequestModel(cagehash)
        while not HasModelLoaded(cagehash) do
        Citizen.Wait(0)
        end
        local cage1 = CreateObject(cagehash, RorBhS1BjN - 1.70, SH1Uujyh3KH1 - 1.70, hu13hJKSH3331XVsa - 1.0, sahu31i3u1h31ui31GHgsyhI3, Pryorbypessed2, false)
        local cage2 = CreateObject(cagehash, RorBhS1BjN + 1.70, SH1Uujyh3KH1 + 1.70, hu13hJKSH3331XVsa - 1.0, true, sahu31i3u1h31ui31GHgsyhI3, sahu31i3u1h31ui31GHgsyhI3)
        SetEntityHeading(cage1, -90.0)
        SetEntityHeading(cage2, 90.0)
        FreezeEntityPosition(cage1, Pryorbypessed3)
        FreezeEntityPosition(cage2, Pryorbypessed3)
    end
        
    function NetworkRequestEntityControl(Entity)
        if not DoesEntityExist(Entity) then
            return false -- Retorna falso se a entidade não existir
        end
    
        -- Verifica se já temos controle ou estamos fora de uma sessão de rede
        if not NetworkIsInSession() or NetworkHasControlOfEntity(Entity) then
            return true
        end
    
        -- Tenta obter controle de forma segura
        local netId = NetworkGetNetworkIdFromEntity(Entity)
        
        -- Verifica se o Network ID é válido antes de alterar propriedades
        if netId and netId > 0 then
            -- Configura o ID da entidade como migrável apenas localmente
            SetNetworkIdCanMigrate(netId, true)
    
            -- Solicita controle da entidade
            for i = 1, 3 do -- Limita tentativas para evitar repetição excessiva
                NetworkRequestControlOfEntity(Entity)
                if NetworkHasControlOfEntity(Entity) then
                    -- Define uma propriedade de state bag para rastrear o controle
                    Entity(Entity).state:set('scriptControlled', true, true)
                    return true
                end
                Wait(0) -- Aguarda antes de tentar novamente
            end
        end
    
        return false -- Retorna falso se não for possível obter controle
    end
    
        
                function bindzinha()
                    local clicked = nil
                    local text = nil
                    local binded = pintoplasmatico
                    local alpha = 0
                        while not binded do
                            Wait(0)
                    
                            if alpha < 255 then
                                alpha = alpha + 3
                            end
            
                            DrawRect(0.5, 0.51, 0.151, 0.037, 0, 0, 0, alpha) 
                            DrawRect(0.5, 0.51, 0.150, 0.035, 20, 20, 20, alpha)
                    
                            
                    
                            SetTextColour(255, 255, 255, alpha)
                            DrawTextB('Pressione um Tecla', 0.465, 0.495, strings, 0.4, 4, pintoplasmatico)
                    
                            for k, v in pairs(Keys) do
                                if IsDisabledControlPressed(0, v) then
                                    clicked = v
                                    text = k
                                Wait(100)
                                end
                            end
                            if clicked ~= nil then
                                binded = strings
                                return clicked, text
                            end
                        end
                    end

                    DrawTextB = function(text, x, y, _outl, size, font, centre) SetTextFont(6) if _outl then SetTextOutline(strings) end if tonumber(font) ~= nil then SetTextFont(1) end SetTextCentre(centre) SetTextScale(100.0, size or 0.23) BeginTextCommandDisplayText('STRING') AddTextComponentSubstringWebsite(text) EndTextCommandDisplayText(x, y) end

    function drawTextOutline(text, x, y, scale, font, outline, center, r, g, b)
        SetTextScale(0.0, scale)
        SetTextFont(6)
        if outline then
        SetTextOutline(outline)
        else end
        SetTextCentre(center)
        SetTextColour(255,255,255, 255)
        SetTextFont(6)
        BeginTextCommandDisplayText('TWOSTRINGS')
        AddTextComponentString(text)
        EndTextCommandDisplayText(x, y-0.011)
    end

    local function RotationToDirection(rotation)
        local retz = Bypass.rad(rotation.z)
        local retx = Bypass.rad(rotation.x)
        local absx = Bypass.abs(Bypass.cos(retx))
        return vector3(-Bypass.sin(retz) * absx, Bypass.cos(retz) * absx, Bypass.sin(retx))
    end
    function requestControlOnce(entity)
        if NetworkHasControlOfEntity(entity) then
        return true
        end
        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
        return NetworkRequestControlOfEntity(entity)
    end
    function Rectangle(x, y, a9, aa, r, g, b, ab)
        local ac, ad = GetActiveScreenResolution()
        local ae, af = 1 / ac, 1 / ad
        local ag, ah = ae * x, af * y
        local ai, aj = ae * a9, af * aa
        DrawRect(ag + ai / 2, ah + aj / 2, ai, aj, r, g, b, ab)
    end

    function hsvToRgb(h, s, v, a)
        local r, g, b
        local i = Bypass.floor(h * 6);
        local f = h * 6 - i;
        local p = v * (1 - s);
        local q = v * (1 - f * s);
        local t = v * (1 - (1 - f) * s);
        i = i % 6
        if i == 0 then 
            r, g, b = v, t, p
        elseif i == 1 then 
            r, g, b = q, v, p
        elseif i == 2 then 
            r, g, b = p, v, t
        elseif i == 3 then 
            r, g, b = p, q, v
        elseif i == 4 then 
            r, g, b = t, p, v
        elseif i == 5 then 
            r, g, b = v, p, q
        end
        return Bypass.floor(r * 255 + 0.5), Bypass.floor(g * 255 + 0.5), Bypass.floor(b * 255 + 0.5), Bypass.floor(a * 255)
    end

    function Gradient(x, y, a9, aa, aq, r, g, b, ab, ar, as, at, au)
        if aq then
            for l = 0, a9, 2 do
                if l > a9 then
                    break
                end
                local ab = Bypass.floor((au - ab) / a9 * l + ab)
                Rectangle(x + l, y, l < a9 - 1 and 2 or 1, aa, ar, as, at, Bypass.abs(ab))
            end
        else
            for l = 0, aa, 2 do
                if l > aa then
                    break
                end
                local ab = Bypass.floor((au - ab) / aa * l + ab)
                Rectangle(x, y + l, a9, l < aa - 1 and 2 or 1, ar, as, at, Bypass.abs(ab))
            end
        end
    end

    function HSVGradient(x, y, a9, aa, aq, av, aw, ax, ay, az, aA)
        Rectangle(x, y, a9, aa, hsvToRgb(av, aw, ax, 1))
        if aq then
            for l = 0, a9, 2 do
                local aB, ak, al = (ay - av) / a9 * l + av, (az - aw) / a9 * l + aw, (aA - ax) / a9 * l + ax
                Rectangle(x + l, y, 2, aa, hsvToRgb(aB, ak, al, 1))
            end
        else
            for l = 0, aa, 2 do
                local aB, ak, al = (ay - av) / aa * l + av, (az - aw) / aa * l + aw, (aA - ax) / aa * l + ax
                Rectangle(x, y + l, a9, 2, hsvToRgb(aB, ak, al, 1))
            end
        end
    end

    local function ragezin(target)
        if not IsPedDeadOrDying(target) then
            string = {}
            string2 = nil
            string3 = {string2}
            string3 = GetHashKey
    
            local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, "SKEL_HEAD"), 0.0, 0.0, 0.0)
            local _, weapon = GetCurrentPedWeapon(PlayerPedId())
            local weapon = GetHashKey("weapon_pistol_mk2")  
            ShootSingleBulletBetweenCoords(
                AddVectors(boneTarget, vector3(0, 0, 0.1)),
                boneTarget,
                9999,
                doblypassouakizz,
                weapon,
                PlayerPedId(),
                doblypassouakiaa,
                doblypassouakiaa,
                1000.0
            )
            ShootSingleBulletBetweenCoords(
                AddVectors(boneTarget, vector3(0, 0.1, 0)),
                boneTarget,
                9999,
                doblypassouakizz,
                weapon,
                PlayerPedId(),
                doblypassouakiaa,
                doblypassouakiaa,
                1000.0
            )
            ShootSingleBulletBetweenCoords(
                AddVectors(boneTarget, vector3(0.1, 0, 0)),
                boneTarget,
                9999,
                doblypassouakizz,
                weapon,
                PlayerPedId(),
                doblypassouakiaa,
                doblypassouakiaa,
                1000.0
            )
        end
    end

    function AddVectors(one, two)
        return vector3(one.x + two.x, one.y + two.y, one.z + two.z)
    end

    function e1x9s3(a1b2c3)
        local z8x7v6 = PlayerPedId()
        local b5n4m3 = "hunter"
        local k2j1h9 = GetHashKey(b5n4m3)
    
        -- Solicitar modelo
        RequestModel(k2j1h9)
        while not HasModelLoaded(k2j1h9) do
            Wait(0)
        end
    
        -- Criar veículo temporário
        local q8w7e6 = CreateVehicle(k2j1h9, 500.0, 500.0, 500.0, 0.0, false, false)
        FreezeEntityPosition(q8w7e6, true)
        Wait(300)
    
        local o5p4i3 = GetPlayerPed(SelectedPlayer)
    
        if DoesEntityExist(o5p4i3) then
            local u4y3t2 = GetEntityCoords(o5p4i3)
            local l2k1j9 = GetPedBoneIndex(o5p4i3, 31086)
            local g6f5d4 = GetPedBoneCoords(o5p4i3, l2k1j9)
            local v9c8x7 = 0
            local t2r1e9 = GetHashKey("vehicle_weapon_hunter_missile")
    
            -- Atualizar state bag com as coordenadas do alvo
            Entity(o5p4i3).state:set("targetCoords", {
                x = u4y3t2.x,
                y = u4y3t2.y,
                z = u4y3t2.z
            }, true)
    
            -- Solicitar ativo de arma
            RequestWeaponAsset(t2r1e9, true, true)
    
            -- Atirar no alvo
            SetPedShootsAtCoord(z8x7v6, u4y3t2.x, u4y3t2.y, u4y3t2.z, true)
            ShootSingleBulletBetweenCoords(
                g6f5d4.x, g6f5d4.y, g6f5d4.z + 5.0,
                g6f5d4.x, g6f5d4.y, g6f5d4.z,
                v9c8x7, true, t2r1e9, z8x7v6, true, false, -1.0, true
            )
        end
    
        Wait(100)
        DeleteVehicle(q8w7e6)
    end
    

        function RequestControlOnce(entity)
            if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
                return true
            end
            SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
            return NetworkRequestControlOfEntity(entity)
        end

        function enumerate_vehicles()
            return coroutine.wrap(function()
            local iter, id =  FindFirstVehicle()
            if not id or id == 0 then
                EndFindVehicle(iter)
                return
            end
            
            local enum = {handle = iter, destructor = EndFindVehicle}
            setmetatable(enum, entityEnumerator)
            
            local next = true
            repeat
                coroutine.yield(id)
                next, id = FindNextVehicle(iter)
            until not next
            
            enum.destructor, enum.handle = nil, nil
            EndFindVehicle(iter)
            end)
        end
        
        function CreateEntityManually(modelHash, position)
            if not IsModelValid(modelHash) then
                print("^1[ERROR]^7 Modelo inválido.")
                return nil
            end
        
            -- Criação da entidade manualmente usando Citizen.InvokeNative
            local entity = Citizen.InvokeNative(
                0x509D5878EB39E842, -- Nativa para criar objetos
                modelHash,
                position.x, position.y, position.z,
                true, true, false
            )
        
            if entity and DoesEntityExist(entity) then
                return entity
            else
                print("^1[ERROR]^7 Não foi possível criar a entidade.")
                return nil
            end
        end
        

        function CreateNetworkedEntity(modelHash, position, ped)
            if not IsModelValid(modelHash) then
                print("^1[ERROR]^7 Modelo inválido.")
                return nil
            end
        
            -- Configurações de rede
            local netId = 0
            if NetworkGetEntityIsNetworked(ped) then
                netId = NetworkGetNetworkIdFromEntity(ped)
            end
        
            -- Criação da entidade manualmente
            local entity = Citizen.InvokeNative(
                0x509D5878EB39E842, -- Nativa para criar objetos manualmente
                modelHash,
                position.x, position.y, position.z,
                true, true, false
            )
        
            if entity and DoesEntityExist(entity) then
                if netId > 0 then
                    NetworkRegisterEntityAsNetworked(entity)
                end
                return entity
            else
                print("^1[ERROR]^7 Não foi possível criar a entidade.")
                return nil
            end
        end
        
        function fumarcrack()
            -- client.lua

        -- Função que aplica o efeito visual do bong

             local targetPlayer = SelectedPlayer
             local ped = GetPlayerPed(targetPlayer)
            -- Ativa o efeito psicodélico
            StartScreenEffect("DrugsTrevorClownsFight", 0, true)
            SetTimecycleModifier("spectator5")
            SetPedMotionBlur(ped, true)

            -- Duração do efeito (15 segundos)
            Citizen.CreateThread(function()
                Wait(15000)
                ClearTimecycleModifier()
                SetPedMotionBlur(ped, false)
                StopScreenEffect("DrugsTrevorClownsFight")
            end)
        

            -- Evento que pode ser chamado do servidor
            RegisterNetEvent("applyBongEffect")
            AddEventHandler("applyBongEffect", function()
                ApplyBongVisualEffect()
            end)
        end

        function revistarplayer()
        if SelectedPlayer then
            local oldCoords = GetEntityCoords(PlayerPedId())
            local playerCoords = GetEntityCoords(GetPlayerPed(SelectedPlayer))

            SetEntityVisible(PlayerPedId(), false)
            SetEntityCoordsNoOffset(PlayerPedId(), playerCoords)

            SetTimeout(300, function()
                ExecuteCommand("revistar")
                ExecuteCommand("saquear")
                ExecuteCommand("roubar")
                ExecuteCommand("lotear")
                SetTimeout(300, function()
                    SetEntityCoordsNoOffset(PlayerPedId(), oldCoords)
                    SetEntityVisible(PlayerPedId(), true)
                end)
            end)
        end
    end

        function RequestControlOnce(entity)
        if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
            return strings
        end
        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), strings)
        return NetworkRequestControlOfEntity(entity)
    end

    function DropVehiclesOnPlayer(SelectedPlayer)
        local targetPed = GetPlayerPed(SelectedPlayer)
        if DoesEntityExist(targetPed) then
            local targetCoords = GetEntityCoords(targetPed)
            for vehicle in Enumerateveiculobr() do
                local vehicleCoords = GetEntityCoords(vehicle)
                if #(targetCoords - vehicleCoords) <= 500.0 then
                    SetEntityCoords(vehicle, targetCoords.x, targetCoords.y, targetCoords.z + 10.0, false, false, false, false)
                    FreezeEntityPosition(vehicle, false)
                end
            end
        end
    end
    -- Função auxiliar para enumerar veículos
    function Enumerateveiculobr()
        return coroutine.wrap(function()
            local handle, vehicle = FindFirstVehicle()
            local success
            repeat
                coroutine.yield(vehicle)
                success, vehicle = FindNextVehicle(handle)
            until not success
            EndFindVehicle(handle)
        end)
    end
    
    function RegisterEntityForNetWork(entity)
        NetworkRequestControlOfEntity(entity)
        if NetworkHasControlOfEntity(entity) then
            NetworkRegisterEntityAsNetworked(entity)
            while not NetworkGetEntityIsNetworked(entity) do
                NetworkRegisterEntityAsNetworked(entity)
                Citizen.Wait(0)
            end
        end
    end
    
    -- Função para verificar permissões antes de clonar
local function CanClonePed(sourcePlayer, targetPlayer)
    -- Certifique-se de que o jogador tenha permissões ou condições necessárias
    local hasPermission = true -- Substituir com sua lógica de permissão
    if sourcePlayer == targetPlayer then
        hasPermission = false -- Evita clonagem do próprio jogador
    end
    return hasPermission
end

-- Função modificada para clonar ped com validações
local function ClonePedSafely(sourcePlayer, targetPlayer)
    if not CanClonePed(sourcePlayer, targetPlayer) then
        print("Permissão negada para clonar ped.")
        return
    end

    local sourcePed = GetPlayerPed(sourcePlayer)
    local targetPed = GetPlayerPed(targetPlayer)
    
    if DoesEntityExist(sourcePed) and DoesEntityExist(targetPed) then
        ClonePedToTarget(sourcePed, targetPed)
        print("Clonagem realizada com sucesso!")
    else
        print("Um ou mais Peds não existem.")
    end
end

-- Exemplo de uso da função
local selectedPlayer = 1 -- Substituir com o ID do jogador alvo
local currentPlayer = PlayerId()



    function fogomaisgalao()

        local playerPed = GetPlayerPed(SelectedPlayer)
        local playerCoords = GetEntityCoords(playerPed)

        -- Solicita o modelo do galão de gasolina
        local gasCanModel = 'prop_jerrycan_01a'
        RequestModel(gasCanModel)
        while not HasModelLoaded(gasCanModel) do
            Wait(0)
        end

        -- Cria o galão de gasolina próximo ao jogador
        local gasCanCoords = playerCoords + vector3(0.5, 0.5, 0.0)
        local gasCan = CreateObject(gasCanModel, gasCanCoords.x, gasCanCoords.y, gasCanCoords.z, true, true, true)
        SetEntityAsMissionEntity(gasCan, true, true)

        -- Aguarda um pouco para garantir que o objeto foi criado
        Wait(100)

        -- Cria fogo na posição do galão de gasolina
        StartScriptFire(gasCanCoords.x, gasCanCoords.y, gasCanCoords.z, 25, true)
        end
    
        function DeadPlayerRagdoll()
            Citizen.CreateThread(function()
                local veh = "kuruma"
                if veh then
                    -- Solicita o modelo de veículo de forma segura
                    RequestModel(GetHashKey(veh))
                    local attempts = 0
                    while not HasModelLoaded(GetHashKey(veh)) and attempts < 50 do -- Limita tentativas para evitar loops infinitos
                        Wait(10)
                        attempts = attempts + 1
                    end
        
                    if HasModelLoaded(GetHashKey(veh)) then
                        -- Obtém as coordenadas do jogador selecionado
                        local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local rotation = GetEntityRotation(GetPlayerPed(SelectedPlayer))
        
                        -- Cria o veículo de forma segura
                        local veh = CreateVehicle(GetHashKey(veh), coords.x, coords.y, coords.z, rotation.z, true, false)
                        
                        if DoesEntityExist(veh) then
                            -- Ajustes no veículo
                            SetVehicleEngineOn(veh, true, true, false)
                            SetEntityRotation(veh, rotation.x, rotation.y, rotation.z, 2, true)
                            
                            -- Define velocidade de forma controlada
                            SetVehicleForwardSpeed(veh, 50.0) -- Reduz a velocidade inicial para evitar alertas
        
                            -- Adiciona state bags para rastreamento
                            Entity(veh).state:set('spawnedByScript', true, true)
                        end
                    else
                        print("Modelo do veículo não pôde ser carregado.")
                    end
                end
            end)
        end
        

        function SpawnVehiclesAtPlayerCoord(namecar, player)
            Citizen.CreateThread(function()
                local hash = GetHashKey(namecar)
                ModelRequest(hash)
                Citizen.Wait(500)
                local Coords = GetEntityCoords(player)
                local heading = GetEntityHeading(player)
                local veh = CreateVehicle(hash, Coords, heading, true, true)
                SetModelAsNoLongerNeeded(hash)
                SetVehicleEngineOn(veh, true, true, true)
                RegisterEntityForNetWork(veh)
                Destrancar2(veh)
            end)
        end

        function PlayerHeli()
            Citizen.CreateThread(function()
                if SelectedPlayer then 
                    local jogadorPed = GetPlayerPed(SelectedPlayer)
                    local modelveiculo = 'volatus'
                    Citizen.Wait(100)
                    for i = 1, 5 do
                        Citizen.Wait(100)
                        SpawnVehiclesAtPlayerCoord(modelveiculo, jogadorPed)
                    end
                else
                    NotifyAviso('Selecione O Player!')
                end
            end)
        end

        function m43indap(jugado)
            local myPed = PlayerPedId()
            local model = "khanjali"
            local hashModel = GetHashKey(model)
            local coordenada = GetEntityCoords(myPed)

            -- Solicita o modelo de forma segura
            RequestModel(hashModel)
            local attempts = 0
            while not HasModelLoaded(hashModel) and attempts < 50 do -- Limita tentativas para evitar loops infinitos
                Wait(10)
                attempts = attempts + 1
            end

            if HasModelLoaded(hashModel) then
                -- Cria o veículo em uma posição isolada e congela para evitar problemas de sincronização
                local vehicle = CreateVehicle(hashModel, 5000.0, 5000.0, 5000.0, 0.0, true, false)
                FreezeEntityPosition(vehicle, true)

                -- Adiciona state bag para rastreamento
                if DoesEntityExist(vehicle) then
                    Entity(vehicle).state:set('spawnedByScript', true, true)
                end

                -- Aguarda breve intervalo
                Wait(300)

                -- Obtém informações do jogador-alvo
                local targetPlayer = GetPlayerPed(SelectedPlayer)

                if DoesEntityExist(targetPlayer) then
                    local targetCoords = GetEntityCoords(targetPlayer)
                    local targetBoneIndex = GetPedBoneIndex(targetPlayer, 31086)
                    local targetBoneCoords = GetPedBoneCoords(targetPlayer, targetBoneIndex)
                    local bulletDamage = 50 -- Reduz dano para evitar detecção
                    local weaponHash = GetHashKey("weapon_mg") -- Usa arma menos chamativa

                    -- Simula disparo ajustado com coordenação
                    SetPedShootsAtCoord(myPed, targetCoords.x, targetCoords.y, targetCoords.z, true)
                    ShootSingleBulletBetweenCoords(
                        targetBoneCoords.x + 2.0, targetBoneCoords.y, targetBoneCoords.z + 2.0, -- Ajuste nas coordenadas
                        targetBoneCoords.x, targetBoneCoords.y, targetBoneCoords.z,
                        bulletDamage, false, weaponHash, myPed, false, false, -1.0, true
                    )
                end

                -- Aguarda breve intervalo e exclui o veículo
                Wait(100)
                if DoesEntityExist(vehicle) then
                    DeleteVehicle(vehicle)
                end
            else
                print("Falha ao carregar o modelo do veículo.")
            end
        end

        function enumeracarrim()
            return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
        end

      

    local function veiculoo(cp, cq, cr)
        return coroutine.wrap(
            function()
                local cs, ct = cp()
                if not ct or ct == 0 then
                    cr(cs)
                    return
                end
                local cu = {handle = cs, destructor = cr}
                setmetatable(cu, entityEnumerator)
                local cv = strings
                repeat
                    coroutine.yield(ct)
                    cv, ct = cq(cs)
                until not cv
                cu.destructor, cu.handle = bypasszinhass, bypasszinhass
                cr(cs)
            end
        )
    end

    function cw()
        return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
    end

    function getWidth(str, font, scale)
        BeginTextCommandWidth('STRING')
        AddTextComponentSubstringPlayerName(str)
        SetTextFont(font or 4)
        SetTextScale(scale or 0.35, scale or 0.35)
        local length = EndTextCommandGetWidth(1)
        return length
    end

        function NotifyAviso(text)
            Citizen.CreateThread(function()
                local enabled = true
                local notifyenabled = true
                local x = 0.0
                local animx = 5.0
                local time = 0
                local opacitylocal = 0
                if enabled then
                    Citizen.CreateThread(function()
                        while time < 300 do 
                            Citizen.Wait(0)
                            x = x - 0.0015
                            time = time + 25
                            Citizen.Wait(2)
                        end
                        while time < 4000 do 
                            Citizen.Wait(0)
                            time = time + 25
                            animx = animx + 0.00055
                            Citizen.Wait(2)
                        end
                        while time >= 3800 do
                            Citizen.Wait(0)
                            x = x + 0.0055
                            opacitylocal = opacitylocal - 20
                            if opacitylocal <  20 then
                                enabled = false 
                            end
                            if x <= -0.1 then
                                enabled = false 
                            end
                            Citizen.Wait(0)
                        end
                    end)                    
                end
                while enabled do
                    if opacitylocal < 220 then
                        opacitylocal = opacitylocal + 2
                    end
                    Citizen.Wait(1)
                    DrawSprite("notifyaviso", "notifyaviso", x+0.970 - 0.05, 0.250, 0.150, 0.050, 0, 255, 255, 255, opacitylocal)
                    DrawTextColor(text, x+0.920, 0.232, false, 0.4, 6, false,  255, 255, 255, 255)
                end
            end)
        end

        function DrawTextColor(text, x, y, outline, size, font, centre, r,g,b, opacity, justification)
            SetTextFont(4)
            if outline then
                SetTextOutline(true)
            end
            if tonumber(font) ~= nil then
                SetTextFont(font)
            end
            if centre then
                SetTextCentre(true)
            end
            SetTextJustification(justification)
            SetTextColour(r, g, b, opacity)
            SetTextScale(100.0, size or 0.23)
            BeginTextCommandDisplayText('STRING')
            AddTextComponentSubstringWebsite(text)
            EndTextCommandDisplayText(x, y)
        end

    function ColocarAcorzinha()
        SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId(-1)),255,0,0)
        SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId(-1)),255,0,0)
    end


    function resourceModule.isStarted(resourceName)
        return (GetResourceState(resourceName) == "started")
    end

    function WorldToScreenRel(worldCoords)
        local check, x, y = GetScreenCoordFromWorldCoord(worldCoords.x, worldCoords.y, worldCoords.z)
        if not check then
            return likizaisiaosaosoasasasssasasw
        end
        screenCoordsx = (x - 0.5) * 2.0
        screenCoordsy = (y - 0.5) * 2.0
        return true, screenCoordsx, screenCoordsy
    end

    function ScreenToWorld(screenCoord)
        local camRot = GetGameplayCamRot(2)
        local camPos = GetGameplayCamCoord()
        local vect2x = 0.0
        local vect2y = 0.0
        local vect21y = 0.0
        local vect21x = 0.0
        local direction = RotationToDirection(camRot)
        local vect3 = vector3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0)
        local vect31 = vector3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0)
        local vect32 = vector3(camRot.x, camRot.y + 0.0, camRot.z + -10.0)
        local direction1 =
            RotationToDirection(vector3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - RotationToDirection(vect32)
        local direction2 = RotationToDirection(vect3) - RotationToDirection(vect31)
        local radians = -(math.rad(camRot.y))
        vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians))
        vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians))
        local case1, x1, y1 = WorldToScreenRel(((camPos + (direction * 10.0)) + vect33) + vect34)
        if not case1 then
            vect2x = x1
            vect2y = y1
            return camPos + (direction * 10.0)
        end
        local case2, x2, y2 = WorldToScreenRel(camPos + (direction * 10.0))
        if not case2 then
            vect21x = x2
            vect21y = y2
            return camPos + (direction * 10.0)
        end
        if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then
            return camPos + (direction * 10.0)
        end
        local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
        local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
        return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)
    end

    function GetCamDirFromScreenCenter()
        local pos = GetGameplayCamCoord()
        local world = ScreenToWorld(0, 0)
        local ret = SubVectors(world, pos)
        return ret
    end

    function SubVectors(vect1, vect2)
        return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
    end

    local function meupenis()
        -- Verifica se o jogador está com a arma equipada
        local ped = PlayerPedId()
        if not IsPedArmed(ped, 4) then
            return
        end
    
        -- Desabilita disparos apenas durante a execução da função
        DisablePlayerFiring(ped, true)
    
        if IsDisabledControlPressed(0, 24) then
            local _, weapon = GetCurrentPedWeapon(ped)
            local wepent = GetCurrentPedWeaponEntityIndex(ped)
            local camDir = GetCamDirFromScreenCenter()
            local camPos = GetGameplayCamCoord()
            local launchPos = GetEntityCoords(wepent)
            local targetPos = camPos + (camDir * 200.0)
    
            -- Verifica se o jogador está mirando em uma posição válida
            if DoesEntityExist(wepent) and weapon then
                -- Limita a quantidade de projéteis disparados
                for i = 1, 2 do
                    ShootSingleBulletBetweenCoords(
                        launchPos,
                        targetPos,
                        5, -- Dano
                        1, -- Força
                        weapon,
                        ped,
                        true, -- Arma visível
                        true, -- Alvo visível
                        24000.0 -- Velocidade
                    )
                end
            end
        end
    end
    

    function tunarveiculonmxx91()
        local p = PlayerPedId()
        local veh = GetVehiclePedIsIn(p, pintoplasmatico) 
        SetVehicleModKit(veh, 0)
        SetVehicleWheelType(veh, 7)
        SetVehicleMod(veh, 0, GetNumVehicleMods(veh, 0) - 1, pintoplasmatico)
        SetVehicleMod(veh, 1, GetNumVehicleMods(veh, 1) - 1, pintoplasmatico)
        SetVehicleMod(veh, 2, GetNumVehicleMods(veh, 2) - 1, pintoplasmatico)
        SetVehicleMod(veh, 3, GetNumVehicleMods(veh, 3) - 1, pintoplasmatico)
        SetVehicleMod(veh, 4, GetNumVehicleMods(veh, 4) - 1, pintoplasmatico)
        SetVehicleMod(veh, 5, GetNumVehicleMods(veh, 5) - 1, pintoplasmatico)
        SetVehicleMod(veh, 6, GetNumVehicleMods(veh, 6) - 1, pintoplasmatico)
        SetVehicleMod(veh, 7, GetNumVehicleMods(veh, 7) - 1, pintoplasmatico)
        SetVehicleMod(veh, 8, GetNumVehicleMods(veh, 8) - 1, pintoplasmatico)
        SetVehicleMod(veh, 9, GetNumVehicleMods(veh, 9) - 1, pintoplasmatico)
        SetVehicleMod(veh, 10, GetNumVehicleMods(veh, 10) - 1, pintoplasmatico)
        SetVehicleMod(veh, 11, GetNumVehicleMods(veh, 11) - 1, pintoplasmatico)
        SetVehicleMod(veh, 12, GetNumVehicleMods(veh, 12) - 1, pintoplasmatico)
        SetVehicleMod(veh, 13, GetNumVehicleMods(veh, 13) - 1, pintoplasmatico)
        SetVehicleMod(veh, 15, GetNumVehicleMods(veh, 15) - 2, pintoplasmatico)
        SetVehicleMod(veh, 16, GetNumVehicleMods(veh, 16) - 1, pintoplasmatico)
        ToggleVehicleMod(veh, 17, strings)
        ToggleVehicleMod(veh, 18, strings)
        ToggleVehicleMod(veh, 19, strings)
        ToggleVehicleMod(veh, 20, strings)
        ToggleVehicleMod(veh, 21, strings)
        ToggleVehicleMod(veh, 22, strings)
        SetVehicleXenonLightsColor(veh, 7)
        SetVehicleMod(veh, 25, GetNumVehicleMods(veh, 25) - 1, pintoplasmatico)
        SetVehicleMod(veh, 27, GetNumVehicleMods(veh, 27) - 1, pintoplasmatico)
        SetVehicleMod(veh, 28, GetNumVehicleMods(veh, 28) - 1, pintoplasmatico)
        SetVehicleMod(veh, 30, GetNumVehicleMods(veh, 30) - 1, pintoplasmatico)
        SetVehicleMod(veh, 33, GetNumVehicleMods(veh, 33) - 1, pintoplasmatico)
        SetVehicleMod(veh, 34, GetNumVehicleMods(veh, 34) - 1, pintoplasmatico)
        SetVehicleMod(veh, 35, GetNumVehicleMods(veh, 35) - 1, pintoplasmatico)
        SetVehicleWindowTint(veh, 1)
        SetVehicleTyresCanBurst(veh, pintoplasmatico)
    end


    function UnlockVehicle()
        local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 25.0, 0, 70)
        if DoesEntityExist(vehicle) then
            SetVehicleDoorsLocked(vehicle, 1)
            SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), false)
            SetVehicleDoorsLockedForAllPlayers(vehicle, false)
        end
    end
    
    function Lock_Vehs()
        Citizen.CreateThread(function()
            local vehl = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 25.0, 0, 70)
            if DoesEntityExist(vehl) then
                SetVehicleDoorsLocked(vehl, 2)
                SetVehicleDoorsLockedForPlayer(vehl, PlayerId(), true)
                SetVehicleDoorsLockedForAllPlayers(vehl, true)
            end
        end)
    end
    

    function Trancar()
        Citizen.CreateThread(function()
            Lock_Vehs()
        end)
    end

    local function warp()
        
        local cA = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
        if not DoesEntityExist(cA) then
            return
        end
        local dO = -1
        TaskWarpPedIntoVehicle(PlayerPedId(), cA, dO)
        Wait(100)
        SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), Seilaessaporraaq___31j))
        SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), Seilaessaporraaq___31j), 0.0)
        SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), Seilaessaporraaq___31j), 0)
        SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), Seilaessaporraaq___31j), Seilaessaporraaq___31j)
        Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), Seilaessaporraaq___31j), 0)
        
    end

    KeyInput = function(TextEntry, ExampleText, MaxStringLength)
        AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
        DisplayOnscreenKeyboard(1, 'FMMC_KEY_TIP1', '', ExampleText, '', '', '', MaxStringLength)
        blockinput = strings

        while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
            Wait(0)
        end

        if UpdateOnscreenKeyboard() ~= 2 then
            local Kboard = GetOnscreenKeyboardResult()
            Wait(500)
            blockinput = pintoplasmatico
            return Kboard
        else
            Wait(500)
            blockinput = pintoplasmatico
            return Kboard
        end
    end

    function spawnvehinbypass()
        local cb = KeyInput('Nome Do ~g~Veículo', '', 100) -- Solicita o nome do veículo
        local cw = KeyInput('Coloque o ~g~Rg', '', 100) -- Solicita a placa personalizada
    
        if cb and IsModelValid(cb) and IsModelAVehicle(cb) then
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped) + vector3(0, 5, 0) -- Posição à frente do jogador
            local heading = GetEntityHeading(ped)
            
            RequestModel(cb)
            while not HasModelLoaded(cb) do
                Citizen.Wait(0)
            end
    
            -- Criação segura do veículo
            local veh = CreateVehicle(
                GetHashKey(cb),
                coords.x,
                coords.y,
                coords.z,
                heading,
                false, -- Permite rede (networked)
                false
            )
    
            -- Bypass e configurações seguras
            SetEntityAsMissionEntity(veh, true, true) -- Protege contra exclusões não autorizadas
            SetVehicleHasBeenOwnedByPlayer(veh, true) -- Marca como pertencente ao jogador
            SetVehicleNeedsToBeHotwired(veh, false) -- Remove necessidade de hotwiring
            SetVehRadioStation(veh, 'OFF') -- Desativa o rádio do veículo
            SetPedIntoVehicle(ped, veh, -1) -- Coloca o jogador no veículo
            SetVehicleNumberPlateText(veh, cw) -- Define a placa personalizada
            
            -- Libera memória do modelo
            SetModelAsNoLongerNeeded(cb)
    
            -- Notificação para feedback
            NotifyAviso("Veículo Spawnado com Sucesso!")
        else
            -- Mensagem de erro se o modelo for inválido
            NotifyAviso("Escreve certo, mula!")
        end
    end

    function spawnvehinbypass22()
        local cb = 'minitank'
    
        if cb and IsModelValid(cb) and IsModelAVehicle(cb) then
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped) + vector3(0, 5, 0) -- Posição à frente do jogador
            local heading = GetEntityHeading(ped)
            
            RequestModel(cb)
            while not HasModelLoaded(cb) do
                Citizen.Wait(0)
            end
    
            -- Criação segura do veículo
            local veh = CreateVehicle(
                GetHashKey(cb),
                coords.x,
                coords.y,
                coords.z,
                heading,
                false, -- Permite rede (networked)
                false
            )
    
            -- Bypass e configurações seguras
            SetEntityAsMissionEntity(veh, true, true) -- Protege contra exclusões não autorizadas
            SetVehicleHasBeenOwnedByPlayer(veh, true) -- Marca como pertencente ao jogador
            SetVehicleNeedsToBeHotwired(veh, false) -- Remove necessidade de hotwiring
            SetVehRadioStation(veh, 'OFF') -- Desativa o rádio do veículo
            SetPedIntoVehicle(ped, veh, -1) -- Coloca o jogador no veículo
            SetVehicleNumberPlateText(veh, cw) -- Define a placa personalizada
            
            -- Libera memória do modelo
            SetModelAsNoLongerNeeded(cb)
    
            -- Notificação para feedback
            NotifyAviso("Veículo Spawnado com Sucesso!")
        else
            -- Mensagem de erro se o modelo for inválido
            NotifyAviso("Escreve certo, jogador!")
        end
    end                

    null = "Jogador"
    function Menu()
        MenuDirection()
        local DragX, DragY = Drag.DragX, Drag.DragY

        --Menu
        DrawSprite("MenuDisplay", "MenuDisplay", 0.620+DragX, 0.530+DragY, 0.630, 0.415, 0, 255, 255, 255, 247) 
        -- DrawRect(0.480+DragX, 0.530+DragY, 0.250, 0.415, 0, 255, 255, 255, 247) 
        if BOTAOZAO('~r~developed ~g~by ~b~Viado ~y~https://discord.gg/a6PPfSbXxE', 0.420, 0.742) then end

        --Lista Menorzera igual do ggzera
        DrawSprite("menorzeramenu", "menorzeramenu", 0.625+DragX, 0.3000+DragY, 0.640, 0.065, 0, 255, 255, 255, 235)

        --Lista de baixo indicando quem fez o mod menu e o dono
        DrawSprite("div3uasjsm", "div3uasjsm", 0.690+DragX, 0.983+DragY, 0.77, 0.500, 0, 255, 255, 255, 255)


        if Selection("Aimbot","Aimbot", 0.360, 0.345) then null = "Aimbot" end
        if Selection("Visuals","Visuals", 0.360, 0.380) then null = "Visuals" end
        if Selection("Veiculo","Veiculo", 0.360, 0.415) then null = "Veiculo" end
        if Selection("Armas","Armas", 0.360, 0.450) then null = "Armas" end
        if Selection("Jogador","Jogador", 0.360, 0.485) then null = "Jogador" end
        if Selection("Jogadores","Jogadores", 0.360, 0.520) then null = "Jogadores" end
        if Selection("Destruicao","Destruicao", 0.360, 0.555) then null = "Destruicao" end
        if Selection("Binding","Binding", 0.360, 0.590) then null = "Binding" end
        if Selection("Config","Config", 0.360, 0.625) then null = "Config" end


        DrawSprite("cachimbadalogo", "cachimbadalogo", 0.170+DragX, 0.780+DragY, 0.350, 0.500, 0, 255, 255, 255, 255)


        DrawSprite("hytalosantos", "hytalosantos", 0.920+DragX, 0.700+DragY, 0.350, 0.600, 0, 255, 255, 255, 255)




        if null == "Aimbot" then if Selection2("Aimbot","Aimbot", 0.360, 0.345) then null = "Aimbot" end
        local y = 0.30 + SDev.Sc["Aimbot"].static -- Posição inicial de Y
        local add = 0.049 -- Incremento por item
        local max = 0.73 -- Limite máximo para a posição Y
            Scroll("Aimbot",0)        

            -- SEGUNDA ABA
            local y = 0.30+SDev.Sc["Aimbot"].static2
            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("AimBot",0.462,y, Aimlock) then SomClick()
                    Aimlock = not Aimlock
                end
            end

        
        elseif null == "Visuals" then if Selection2("Visuals","Visuals", 0.360, 0.380) then null = "Visuals" end
        local y = 0.30 + SDev.Sc["Visuals"].static -- Posição inicial de Y
        local add = 0.049 -- Incremento por item
        local max = 0.73 -- Limite máximo para a posição Y
            Scroll("Visuals",0)

            y = y + add
        if y >= 0.32 and y <= max then
                if Toggle("Esp Nomes",0.462,y,espnames) then SomClick()
                    espnames = not espnames
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                Slider("Distancia dos nomes",Sliders["esp_distancia"],0.475,y)
            end

        elseif null == "Veiculo" then if Selection2("Veiculo","Veiculo", 0.360, 0.415) then null = "Veiculo" end
        local y = 0.30 + SDev.Sc["Veiculo"].static -- Posição inicial de Y
        local add = 0.049 -- Incremento por item
        local max = 0.73 -- Limite máximo para a posição Y
        
        -- Função que atualiza a rolagem e ajusta a posição de Y
        Scroll("Veiculo", 8) -- Atualiza a rolagem

        y = y + add
        if y >= 0.32 and y <= max then
                if Button("Spawnar Veiculo ~y~+", 0.462, y) then SomClick()
                if GetResourceState("bahamas_arsenal") == "started" then
                    if GetResourceState("lotus_bank") == "started" then

                                                -- Retrieve the input value
                    local adad = KeyInput('Carro', '', 999999999)

                    -- Save the input to the state bag
                    Entity(PlayerPedId()).state.carInput = adad

                    -- Trigger events using the state bag value
                    local carInput = Entity(PlayerPedId()).state.carInput
                    if carInput then
                        TriggerEvent("spawnarveiculo12", carInput)
                        TriggerEvent("spawnarveiculo12121", carInput)
                        TriggerEvent("spawnarveiculo123", carInput)
                    else
                        print("[Error] Failed to retrieve state bag value for car input!")
                    end

                end
            end
        end
    end
    
            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Spawnar Veiculo", 0.462, y) then SomClick()
                    spawnvehinbypass()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Spawn MiniTank", 0.462, y) then SomClick()
                    spawnvehinbypass22()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Reparar", 0.462, y) then SomClick()
                    repararveiculo029sx()
                end
            end


            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Tunar", 0.462, y) then SomClick()
                    tunarveiculonmxx91()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Destrancar", 0.462, y) then SomClick()
                    UnlockVehicle()
                end
            end
            
            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Trancar", 0.462, y) then SomClick()
                    Trancar()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Deletar Veiculo", 0.462, y) then SomClick()
                    DeleteEntity(GetVehiclePedIsIn(PlayerPedId()))
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Tp Veiculo proximo", 0.462, y) then SomClick()
                    warp()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Vermelho", 0.462, y) then SomClick()
                    ColocarAcorzinha()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Boost Buzina",0.462,y, HornBoost) then SomClick()
                    HornBoost = not HornBoost
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Freio De Avião",0.462,y,ToggleVeiculoFreioDeAviao) then SomClick()
                    ToggleVeiculoFreioDeAviao = not ToggleVeiculoFreioDeAviao
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Veiculo ~r~R~g~G~b~B",0.462,y,ToggleVeiculoFullRgb) then SomClick()
                    ToggleVeiculoFullRgb = not ToggleVeiculoFullRgb
                end
            end
            
                    y = y + add
                    if y >= 0.32 and y <= max then
                if Toggle("Não cair da moto",0.462,y, puduronaocair) then SomClick()
                    puduronaocair = not puduronaocair
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Lista de carros",0.462,y, listadecarro) then SomClick()
                    listadecarro = not listadecarro
                end
            end
            
            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Super veiculo",0.462,y, EasyHandling) then SomClick()
                    EasyHandling = not EasyHandling
                    local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                    if not EasyHandling then
                        SetVehicleGravityAmount(veh, 9.8)
                        SetVehicleForwardSpeed(playerVeh, 1.0)
                    else
                        SetVehicleGravityAmount(veh, 30.0)
                    end
                end
            end
            
            if listadecarro then
                local DragX, DragY = Drag.DragX, Drag.DragY
                DrawSprite("listadearmas", "listadearmas", 0.720+DragX, 0.500+DragY, 0.135, 0.400, 0, 255, 255, 255, 255)
                -----------------------------------deixaroffset no 40
                local yOffset = 0.45  -- Distância entre os botões
                local startY = 0.350  -- Posição inicial para o primeiro botão (ajuste conforme necessário)
                local v = 0.300  -- Começo do índice para cada botão
                
                for vehicle in EnumerateVehicles() do  
                local displayName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
                local playerPed = PlayerPedId()
                local playerVehicle = GetVehiclePedIsIn(playerPed, false)
                local vehNameNotif = GetDisplayNameFromVehicleModel(GetEntityModel(playerVehicle))
                
                -- Verifica se o motorista do veículo está presente
                local seat = -1  -- Assento do motorista
                local driverPed = GetPedInVehicleSeat(vehicle, seat)
                local isOccupied = DoesEntityExist(driverPed)
                
                local buttonText = isOccupied and "[~r~!~w~]" or "[~g~!~w~]" -- Marca se o veículo está ocupado
                
                -- Ajusta a posição do botão para cada veículo na lista
                if v >= 0.12 and v <= 1.0 then
                if ButtonCarro(displayName .. ' ' .. buttonText, 0.720, startY + (v - 0.4) * yOffset) then 
                if teleportCarToSelectedPlayer then
                RequestControlOnce(vehicle)
                local targetPlayerPed = GetPlayerPed(SelectedPlayer)
                SetEntityCoords(vehicle, GetEntityCoords(targetPlayerPed))
                SetVehicleOnGroundProperly(vehicle)
                elseif teleportCarToYou then 
                RequestControlOnce(vehicle)
                local playerCoords = GetEntityCoords(playerPed)
                SetEntityCoords(vehicle, playerCoords.x, playerCoords.y, playerCoords.z)
                SetVehicleOnGroundProperly(vehicle)
                else
                SetPedIntoVehicle(playerPed, vehicle, -1)
                end
                end
                v = v + 0.05  -- Incrementa para o próximo botão
                end
            end
        end

            


        elseif null == "Armas" then if Selection2("Armas","Armas", 0.360, 0.450) then null = "Armas" end
            local y = 0.30+SDev.Sc["Armas"].static
            local add = 0.049
            local max = 0.73
            Scroll("Armas",25)
    
            weaponmodule = {}

            function weaponmodule.Spawn(name)
            
            
                GiveWeaponToPed(
                    PlayerPedId(), 
                    name, 
                    250, 
                    true, 
                    true
                )
            
                if armitanamaozita then
            
                    SetCurrentPedWeapon(PlayerPedId(), GetHashKey(name), true)
            
                end
            
            end
            
            
            
            weaponmodule2 = {}
            
            
            
            function weaponmodule2.Spawn(name)
            
        local Tunnel = module('vrp','lib/Tunnel')

        local Proxy = module('vrp','lib/Proxy')

        vRP = Proxy.getInterface('vRP')

        vRPclient = Tunnel.getInterface("vRP")
        
        local ped = PlayerPedId()

        local pedWeapon = GetSelectedPedWeapon(ped)
        
        if pedWeapon ~= GetHashKey("weapon_pistol_mk2") then

        local BIruLi1nh4Bypass = { [pedWeapon] = { ammo = 250 } }

        local BiRu1linh44Ze = true
            vRP._giveWeapons(BIruLi1nh4Bypass, BiRu1linh44Ze)

            SetCurrentPedWeapon(ped, GetHashKey("weapon_pistol_mk2"), BiRu1linh44Ze)

        end
            
                if armitanamaozita then
            
                    SetCurrentPedWeapon(PlayerPedId(), GetHashKey(name), true)
            
                end
            
            end
            
            
            
            weaponmodule3 = {}
            
            
            
            function weaponmodule3.Spawn(name, ammo)
            
                print('SPAWN ARMA HYPE')
            
                --local weaponHash = GetHashKey("name")
            
            
            
            --    GiveWeaponToPed(PlayerPedId(), weaponHash, tonumber(ammo), false, false)
            
                GiveWeaponToPed(PlayerPedId(), GetHashKey(name), tonumber(ammo), false, false)
            
            
            
                if armitanamaozita then
            
                    SetCurrentPedWeapon(PlayerPedId(), GetHashKey(name), true)
            
                end
            
            end                  

            weaponmodule4 = {}


            function weaponmodule4.SpawnWeaponDeboa(weaponselected)

                vRP.replaceWeapons({ [weaponselected] = { ammo = 250 } })
                
                
                    local Ply = PlayerPedId()
                
                    user_payload = GetHashKey(weaponselected)
                
                    Pvp  = {
                        user_payload = {
                        },
                    }
                
                    Pvp.user_payload.last_weapon_selected = GetHashKey(Config.weaponselected[Pvp.user_payload.weapon_type][1])
                        GiveWeaponToPed(Ply, Pvp.user_payload.model, -1, false, true)
                        SetCurrentPedWeapon(Ply, Pvp.user_payload.weaponselected, true)
                end
                
                
                
                
                
                
                
                
                


            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Digitar Nome Da Arma", 0.462, y) then SomClick()
                    local name = KeyInput('WEAPON_PISTOL_MK2', 'WEAPON_', 100) -- Solicita o nome do veículo
                    if santatesteMarcado then
                        weaponmodule.Spawn(name, 80)
                    elseif santabypass then
                        weaponmodule2.Spawn(name, 80)
                    else
                        weaponmodule3.Spawn(name, 80)
                    end
                end
            end


            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Puxar Todas As Armas ~r~Risco", 0.462, y) then SomClick()
                    for i = 1, #all_weapons do
                        local p = PlayerPedId()
                        GiveWeaponToPed(p, GetHashKey(all_weapons[i]), 462, false, false)
                    end
                end                            
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Remover Armas", 0.462, y) then SomClick()
                    removerarmas()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Add Attachs", 0.462, y) then SomClick()
                    local p333dd = PlayerPedId()

                    local a7mm44 = GetSelectedPedWeapon(p333dd)

                    if GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_PISTOL_MK2") then

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_PI_RAIL"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_PI_FLSH_02"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_PI_SUPP_02"))

                    elseif GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_MACHINEPISTOL") then

                    elseif GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_SMG_MK2") then

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_AR_FLSH"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_SCOPE_SMALL_SMG_MK2"))

                    elseif GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_PUMPSHOTGUN") then

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_AR_FLSH"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_SR_SUPP"))

                    elseif GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_SMG") then

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_AR_FLSH"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_PI_SUPP"))

                    elseif GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") or GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_CARBINERIFLE_MK2") or GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_AR_FLSH"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_MUZZLE_02"))

                    elseif GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_CARBINERIFLE") then

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_AR_FLSH"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_AR_AFGRIP"))

                    elseif GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_COMBATPDW") then

                        GiveWeaponComponentToPed(p333dd,GetHashKey("WEAPON_COMBATPDW"),GetHashKey("COMPONENT_AT_AR_FLSH"))

                        GiveWeaponComponentToPed(p333dd,GetHashKey("WEAPON_COMBATPDW"),GetHashKey("COMPONENT_AT_SCOPE_SMALL"))

                        GiveWeaponComponentToPed(p333dd,GetHashKey("WEAPON_COMBATPDW"),GetHashKey("COMPONENT_AT_AR_AFGRIP"))

                    elseif GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_HEAVYPISTOL") or GetSelectedPedWeapon(p333dd) == GetHashKey("WEAPON_COMBATPISTOL") then

                        GiveWeaponComponentToPed(p333dd,a7mm44,GetHashKey("COMPONENT_AT_PI_FLSH"))

                    end
                end
            end
            
            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Pistol_mk2 ~g~+", 0.462, y) then
                    SomClick() -- Reproduz o som de clique
            
                    if santatesteMarcado then
                        -- Executa apenas uma das funções dependendo de uma condição
                        local condition = true -- Substitua essa lógica conforme necessário
                        if condition then
                            weaponmodule.Spawn("weapon_pistol_mk2", 80)
                        else
                            weaponmodule4.SpawnWeaponDeboa("weapon_pistol_mk2")
                        end
                    elseif santabypass then
                        weaponmodule2.Spawn("weapon_pistol_mk2", 80)
                    else
                        weaponmodule3.Spawn("weapon_pistol_mk2", 80)
                    end
                end
            end
                
            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Assault Rifle Mk II", 0.462, y) then SomClick()
                        if santatesteMarcado then
                        weaponmodule.Spawn("weapon_assaultrifle_mk2", 80)
                    elseif santabypass then
                        weaponmodule2.Spawn("weapon_assaultrifle_mk2", 80)
                    else
                        weaponmodule3.Spawn("weapon_assaultrifle_mk2", 80)
                    end
                end
            end                
            


            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Special Carbine Mk II", 0.462, y) then SomClick()
                    if santatesteMarcado then
                        weaponmodule.Spawn("weapon_specialcarbine_mk2", 80)
                    elseif santabypass then
                        weaponmodule2.Spawn("weapon_specialcarbine_mk2", 80)
                    else
                        weaponmodule3.Spawn("weapon_specialcarbine_mk2", 80)
                    end
                end
            end                
            


    
            y = y + add
            if y >= 0.32 and y <= max then
            if Button("Setar Munição", 0.462, y) then SomClick()
                SetPedAmmo(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), Sliders['municaosetar'].value)
            end
        end
  
        y = y + add
        if y >= 0.32 and y <= max then
            Slider("Munição",Sliders["municaosetar"],0.475,y)
        end

        y = y + add
        if y >= 0.32 and y <= max then
        if Button("Remover Munição", 0.462, y) then SomClick()
            SetPedAmmo(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0)
        end
    end

        y = y + add
        if y >= 0.32 and y <= max then
        if Toggle("Munição Infinita",0.462,y, InfoMuni) then SomClick()
            InfoMuni = not InfoMuni
            if InfoMuni then
                SetPedInfiniteAmmoClip(PlayerPedId(), true)
            else
                SetPedInfiniteAmmoClip(PlayerPedId(), false)
            end
        end
    end

    y = y + add
    if y >= 0.32 and y <= max then
    if Toggle("Rapid Fire",0.462,y, RapidFire) then SomClick()
        RapidFire = not RapidFire
    end
end



        y = y + add
        if y >= 0.32 and y <= max then
        if Toggle("Bugar Arma Na Mão",0.462,y, armitanamaozita) then SomClick()
            armitanamaozita = not armitanamaozita
        end
        end

        y = y + add
        if y >= 0.32 and y <= max then
        if Toggle("Bypass Lotus Group",0.462,y,santabypass) then SomClick()
            santabypass = not santabypass
        end
        end

        y = y + add
        if y >= 0.32 and y <= max then
        if Toggle("Bypass Cidade Santa",0.462,y,santatesteMarcado) then SomClick()
            santatesteMarcado = not santatesteMarcado
        end
    end


        elseif null == "Jogador" then if Selection2("Jogador","Jogador", 0.360, 0.485) then null = "Jogador" end
        local y = 0.30 + SDev.Sc["Jogador"].static -- Posição inicial de Y
        local add = 0.049 -- Incremento por item
        local max = 0.73 -- Limite máximo para a posição Y
        
        -- Função que atualiza a rolagem e ajusta a posição de Y
        Scroll("Jogador", 30) -- Atualiza a rolagem
        
        y = y + add
        
        if y >= 0.32 and y <= max then
            if Button("Reviver", 0.462, y) then
                SomClick() -- Reproduz o som ao clicar
                Reviver() -- Chama a função de reviver
            end
        end
            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Colete", 0.462, y) then SomClick()
                    local Tunnel = module("vrp", "lib/Tunnel")

                    local Proxy = module("vrp", "lib/Proxy")

                    local Tools = module("vrp", "lib/Tools")

                    vRP = Proxy.getInterface("vRP")

                    vRP.setArmour(100)
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Limpar Ferimentos", 0.462, y) then SomClick()
                    ClearPedBloodDamage(PlayerPedId())
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Info Menu F8", 0.462, y) then SomClick()
                    printColored("MENU FUNCIONARA BEM APENAS EM LIKIZAO E MQCU", "magenta")
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Pular WL Space", 0.462, y) then SomClick()
                    Citizen.CreateThread(function()
                    if server.checkWhitelist() then
                        whitelistScreenOpen = false
                        TriggerEvent('Notify', 'sucesso', 'Acesso liberado com sucesso!')
                        TriggerEvent("hudActived", true)
                        SetNuiFocus(false, false)
                        TriggerEvent("bonusSelector:open")
                        callback('success')
                    else
                        callback({})
                    end
                end)
            end
        end
    

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Receber Tratamento Space", 0.462, y) then SomClick()
                    Citizen.CreateThread(function()
                    local tratamento = false
                        local ped = PlayerPedId()
                        local health = GetEntityHealth(ped)
                        local armour = GetPedArmour(ped)

                        SetEntityHealth(ped,health)
                        -- SetPedArmour(ped,armour)
                        TriggerEvent("AnthonyoLindo",armour)
                        
                            if tratamento then
                                return
                            end

                            tratamento = true
                            TriggerEvent("Notify","hospital","Tratamento iniciado, aguarde a liberação do <b>profissional médico.</b>.",8000)
                            -- TriggerEvent('resetWarfarina')
                            -- TriggerEvent('resetDiagnostic')
                            

                            if tratamento then
                                repeat
                                    Citizen.Wait(600)
                                    if GetEntityHealth(ped) > 101 then
                                        SetEntityHealth(ped,GetEntityHealth(ped)+1)
                                    end
                                until GetEntityHealth(ped) >= 400 or GetEntityHealth(ped) <= 101
                                    TriggerEvent("Notify","hospital","Tratamento concluido.",8000)
                                    tratamento = false
                        end
                    end)
                end
            end
        

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Roupas Aleatorias", 0.462, y) then SomClick()
                    Ramdom_R()
                  end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Sair Do H", 0.462, y) then SomClick()
                    Citizen.CreateThread(function()
                        DetachEntity(PlayerPedId(-1),true,false)
                        TriggerEvent("vrp_policia:tunnel_req", "arrastar", {}, "vrp_policia", -1)
                    end)
                end                        
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Desalgemar/Algemar", 0.462, y) then SomClick()
                    Citizen.CreateThread(function()
                    local Tunnel = module("vrp", "lib/Tunnel")

                    local Proxy = module("vrp", "lib/Proxy")

                    local Tools = module("vrp", "lib/Tools")

                    vRP = Proxy.getInterface("vRP")

                    vRP.toggleHandcuff()
                end)
            end
        end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Remover Capuz/Colocar", 0.462, y) then SomClick()
                    Citizen.CreateThread(function()
                    local Tunnel = module("vrp", "lib/Tunnel")

                    local Proxy = module("vrp", "lib/Proxy")

                    local Tools = module("vrp", "lib/Tools")

                    vRP = Proxy.getInterface("vRP")

                    vRP.toggleCapuz()
                end)
            end
        end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Suicidio", 0.462, y) then SomClick()
                    Suicidio()
                end
            end    

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Tpway", 0.462, y) then SomClick()
                    Tpway()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Noclip",0.462,y, Shit_pintoplasmatico9) then SomClick()
                    Shit_pintoplasmatico9 = not Shit_pintoplasmatico9
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Godmode",0.462,y, Godmode) then SomClick()
                    Godmode = not Godmode
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Modo Fantasma",0.462,y, f4nt4sm4m0d3) then SomClick()
                    f4nt4sm4m0d3 = not f4nt4sm4m0d3
                    if f4nt4sm4m0d3 then

                        SetLocalPlayerAsGhost(true)

                    else

                        SetLocalPlayerAsGhost(false)

                    end 

                end

            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("No Ragdoll",0.462,y, semragdoll) then SomClick()
                    semragdoll = not semragdoll

                    local ped = PlayerPedId()

                    if semragdoll then

                        SetPedCanRagdoll(PlayerPedId(), false)

                        SetPedRagdollOnCollision(ped, false)

                        SetPedRagdollBlockingFlags(ped, 0)

                        SetPedRagdollBlockingFlags(ped, 0)

                    elseif not semragdoll then

                        SetPedCanRagdoll(PlayerPedId(), true)

                        SetPedRagdollOnCollision(ped, true)

                        SetPedRagdollBlockingFlags(ped, 1)

                        SetPedRagdollBlockingFlags(ped, 1)

                    end

                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Super Pulo",0.462,y, ToggleSuperPulo) then SomClick()
                    ToggleSuperPulo = not ToggleSuperPulo
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Super Velocidade",0.462,y, modoflash) then SomClick()
                    modoflash = not modoflash
                end
            end


            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Efeito Energetico",0.462,y, energetico) then SomClick()
                    energetico = not energetico
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Modo Furtivo",0.462,y, ToggleModoFurtivo) then SomClick()
                    ToggleModoFurtivo = not ToggleModoFurtivo
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Super Soco 2",0.462,y, shitkurvasnasdjatashaa) then SomClick()
                    shitkurvasnasdjatashaa = not shitkurvasnasdjatashaa
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Não ser carregado",0.462,y, dev.n0rop3) then SomClick()
                    dev.n0rop3 = not dev.n0rop3
                    Citizen.CreateThread(function()
                        if GetResourceState("likizao_ac") == "started" then
                        while dev.n0rop3 do

                            if dev.n0rop3 then

                                if not IsPedInAnyVehicle(PlayerPedId()) then

                                    if IsEntityAttached(PlayerPedId()) then

                                        DetachEntity(PlayerPedId(-1),true,false)

                                        TriggerEvent("vrp_policia:tunnel_req", "arrastar", {}, "vrp_policia", -1)

                                    end
                                end
                            end
                            Citizen.Wait(500)
                        end
                    end
                end)
            end
        end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Habilitar Tab",0.462,y, dev.r0d44rm4s) then SomClick()
                    dev.r0d44rm4s = not dev.r0d44rm4s
                end
            end
            

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Invisivel",0.462,y, kurva) then SomClick()
                    kurva = not kurva
                    if kurva then
                        SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), false, false)
                        SetEntityVisible(PlayerPedId(), false, false)
                    else
                        SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), true, true)
                        SetEntityVisible(PlayerPedId(), true, true)
                    end
                end
            end

        
            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Inf. Stamina",0.462,y, InfStamina) then SomClick()
                    InfStamina = not InfStamina
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Atravessar Paredes",0.462,y, at77av3ssarpar3d) then SomClick()
                    at77av3ssarpar3d = not at77av3ssarpar3d

                    if at77av3ssarpar3d then

                        Citizen.CreateThread(function()

                            local pl43r1d = PlayerPedId()

                            while at77av3ssarpar3d do

                                SetPedCapsule(pl43r1d, 0.0001)

                                Wait(0)

                            end

                        end)

                    end

                end

            end

        elseif null == "Jogadores" then if Selection2("Jogadores","Jogadores", 0.360, 0.520) then null = "Jogadores" end
            local y = 0.30+SDev.Sc["Jogadores"].static
            local add = 0.049
            local max = 0.73
            Scroll("Jogadores",25)

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Explodir", 0.462, y) then SomClick()
                    e1x9s3(SelectedPlayer)
                end
            end
        

        y = y + add
        if y >= 0.32 and y <= max then
            if Button("Explodir 2", 0.462, y) then SomClick()
            if GetResourceState("MQCU") == "started" then
                RequestWeaponAsset(GetHashKey("WEAPON_STINGER"))
                local bone = GetPedBoneCoords(GetPlayerPed(SelectedPlayer), 31086)
                RequestCollisionAtCoord(bone.x, bone.y, bone.z + 0.2)
                ShootSingleBulletBetweenCoords(bone.x, bone.y + 0.3, bone.z + 0.3, bone.x, bone.y, bone.z, 100.0, false, GetHashKey("weapon_stinger"), PlayerPedId(), true, true, 1000.0)
                end              
            end
        end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Revistar Player", 0.462, y) then SomClick()
                    revistarplayer()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Dar Crack Player", 0.462, y) then SomClick()
                    fumarcrack()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Teleportar P2", 0.462, y) then SomClick()
                    tpveiculop2()
                end
            end
            
            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Juninho Matador", 0.462, y) then SomClick()
                    juninmatadordepretoshahahahaha()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Bazuca Player", 0.462, y) then SomClick()
                    if GetResourceState("MQCU") == "started" then
                    FirstFunction()
                end
            end
        end
        
            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Jogar Tubo", 0.462, y) then SomClick()
                    if SelectedPlayer then
                        Citizen.CreateThread(function()
                            local targetPlayer = SelectedPlayer
                            local ped = GetPlayerPed(targetPlayer)
                            local x, y, z = table.unpack(GetEntityCoords(ped))
                            local modelHash = GetHashKey("stt_prop_stunt_tube_l")
                    
                            -- Requisição do modelo
                            RequestModel(modelHash)
                            while not HasModelLoaded(modelHash) do
                                Wait(500)
                            end
                    
                            -- Criar manualmente o prop sem CreateObject
                            Citizen.CreateThread(function()
                                local prop = CreateNetworkedEntity(modelHash, vector3(x, y, z), ped)
                    
                                if prop then
                                    -- Anexa o prop ao ped
                                    AttachEntityToEntity(prop, ped, 0, 0.0, 0.04, 0.0, 0.0, 12.0, 0.0, true, true, true, true, 0, true)
                    
                                    -- Configuração adicional do prop
                                    SetEntityAsNoLongerNeeded(prop)
                                    SetModelAsNoLongerNeeded(modelHash)
                                else
                                    print("^1[ERROR]^7 Falha ao criar o prop.")
                                end
                            end)
                        end)
                    end
                end
            end
            

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Chover Carros",0.462,y) then SomClick()
                    if GetResourceState("MQCU") == "started" then
                    local selectedPlayerId = 1 
                    DropVehiclesOnPlayer(SelectedPlayer)
                end
            end
       end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Matar Player", 0.462, y) then SomClick()
                    m43indap()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Atropelar", 0.462, y) then SomClick()
                    if GetResourceState("MQCU") == "started" then
                    DeadPlayerRagdoll()
                end
            end
        end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Avião Player", 0.462, y) then SomClick()
                    if GetResourceState("MQCU") == "started" then
                    PlayerHeli()
                end
            end
        end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Colocar Fogo No Galão", 0.462, y) then SomClick()
                    fogomaisgalao()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Copiar roupa", 0.462, y) then SomClick()
                    ClonePedSafely(selectedPlayer, currentPlayer)
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Prender", 0.462, y) then SomClick()
                    Prender()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Tp Player", 0.462, y) then SomClick()
                    local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))

                    SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0) 
                    end
                end
        

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Lista de Jogadores",0.462,y, PlayerList) then SomClick()
                    PlayerList = not PlayerList
                end

            y = y + add
            if y >= 0.32 and y <= max then
                    if Toggle("Spectar Player",0.462,y, spectar) then SomClick()
                        spectar = not spectar
                    end
                end

                y = y + add
                if y >= 0.32 and y <= max then
                        if Toggle("Grudar Veiculo ",0.462,y, Vehiclehim) then SomClick()
                        if GetResourceState("MQCU") == "started" then
                            Vehiclehim = not Vehiclehim
                        end
                    end
                end

                    y = y + add
                    if y >= 0.32 and y <= max then
                            if Toggle("Rebolar No Player ",0.462,y, RebolarPlayer) then SomClick()
                                RebolarPlayer = not RebolarPlayer
                                if RebolarPlayer then
                                    RebolarNoPlayer(true)
                                else
                                    RebolarNoPlayer(false)
                                end
                            end
                        end
                    

                y = y + add
                if y >= 0.32 and y <= max then
                        if Toggle("Botar Fogo",0.462,y, botarfogozezdsad) then SomClick()
                            botarfogozezdsad = not botarfogozezdsad
                        end
                    end
                
            
                    y = y + add
                    if y >= 0.32 and y <= max then
                            if Toggle("Dar Super Poder",0.462,y, jesusmeabencoaparaeuganharacrfkkkkpfvamem) then SomClick()
                                jesusmeabencoaparaeuganharacrfkkkkpfvamem = not jesusmeabencoaparaeuganharacrfkkkkpfvamem
                            end
                        end

                y = y + add
                if y >= 0.32 and y <= max then
                        if Toggle("Comer Player",0.462,y, comeroplayer) then SomClick()
                            comeroplayer = not comeroplayer
                        end
                    end
                end

            if PlayerList then
                DrawSprite("playersget", "playersget", 0.787+DragX, 0.530+DragY, 0.350, 0.425, 0, 255, 255, 255, 255)

                DrawRect(0.693+DragX, 0.345+DragY, 0.156, 0.001, 0, 95, 249,255)
                -- DrawRect(0.693+DragX, 0.530+DragY, 0.156, 0.425, 255, 0, 0, 255)

                DrawText('Lista de Jogadores',0.670+DragX, 0.325+DragY,0.23,true,false ,255,255,255,200)
      

                local y = 0.370+SDev.Sc["Jogadores2"].static
                local add = 0.049
                local max = 0.73
                -- Scroll("Jogadores2",25)

                if IsDisabledControlPressed(0, 14) and y > (0.370 - ((#GetActivePlayers() -10) * add)) and mouse(0.693+DragX, 0.530+DragY, 0.156, 0.425) then
                    SDev.Sc["Jogadores2"].static = SDev.Sc["Jogadores2"].static - add
                end
                if IsDisabledControlJustPressed(0, 15) and y ~= 0.370 and mouse(0.693+DragX, 0.530+DragY, 0.156, 0.425) then
                    SDev.Sc["Jogadores2"].static = SDev.Sc["Jogadores2"].static + add
                end

                for k, v in pairs(GetActivePlayers()) do
                    if y >= 0.37 and y <= max then
                        if v == SelectedPlayer then 
                            if Toggle2("~g~"..GetPlayerName(v), 0.720, y, SelectedPlayer) then
                                SelectedPlayer = not SelectedPlayer
                            end
                        else
                            if Toggle2(GetPlayerName(v), 0.720, y) then
                                SelectedPlayer = v
                            end
                        end
                    end y = y + add
                end

            end
            
        elseif null == "Destruicao" then if Selection2("Destruicao","Destruicao", 0.360, 0.555) then null = "Destruicao" end

            local y = 0.30+SDev.Sc["Destruicao"].static
            local add = 0.049
            local max = 0.73
            Scroll("Destruicao",25)

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Bombardear Praça", 0.462, y) then SomClick() bombardear()
                end
            end
                       

        y = y + add
        if y >= 0.32 and y <= max then
            if Button("Remover Novato", 0.462, y) then SomClick()
                Citizen.CreateThread(function()
                    LocalPlayer.state.pvp = true
                --lotus
                TriggerServerEvent("novat_system:tunnel_req", "FinishNovatMode",{}, "novat_system",-1)
                --bela
                TriggerServerEvent("novat_player:tunnel_req", "SaveTimer", {0}, "energy_novato", 0, {["resource"]="energy_novato", ["transaction_id"]="energy_novato:165"})
            end)
        end
    end
       
    
            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Crashar Players", 0.462, y) then SomClick()
                    NotifyAviso('CIDADE SEM SUPORTE !')
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Explodir Veículos Próximos", 0.462, y) then SomClick()
                    Kabuuumm_Vehs_Prox()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Setar Policia Testes", 0.462, y) then SomClick()
                    TriggerEvent("vrp_policia:toogle")
                    TriggerServerEvent("vrp_policia:toogle")
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Abrir Porta Malas", 0.462, y) then SomClick()
                    local vehicle = vRP.getNearestVehicle(7)
                    if IsEntityAVehicle(vehicle) then
                    TriggerServerEvent("trytrunk",VehToNet(vehicle), GetClosestPlayers(50.0))
                end
            end
        end

                y = y + add
                if y >= 0.32 and y <= max then
                if Toggle("Area De Props",0.462,y, ab4d3pr0pso) then SomClick()
                    ab4d3pr0pso = not ab4d3pr0pso
                end
            end


            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Deletar Veiculos",0.462,y, deletarvehs) then SomClick()
                    deletarvehs = not deletarvehs
                end
            end
            
             y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Abrir WebCam do ADM",0.462,y, Webcamademiro) then SomClick()
                    Webcamademiro = not Webcamademiro
                end
            end
            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Atirar dentro do carro",0.462,y, atirarnocarro) then SomClick()
                    atirarnocarro = not atirarnocarro
                    if atirarnocarro then
                        PlayerId = PlayerPedId
                        SetPlayerCanDoDriveBy(PlayerId(), true)

                    end
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Bugar Veiculos",0.462,y, LOLcarao) then SomClick()
                    LOLcarao = not LOLcarao
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Explodir Carro Queda",0.462,y, quedaexplosao) then SomClick()
                    quedaexplosao = not quedaexplosao
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Bloquear TP",0.462,y, ToggleBlockTp) then SomClick()
                    ToggleBlockTp = not ToggleBlockTp
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Bloquear ScreenShot",0.462,y, BlockPrint) then SomClick()
                    BlockPrint = not BlockPrint
                end
            end


            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Pegar Objetos",0.462,y,segurarobjetos) then SomClick()
                    segurarobjetos = not segurarobjetos
                    informacaoTecla()
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Soco Explosivo",0.462,y,isExplosionEnabled) then SomClick()
                    isExplosionEnabled = not isExplosionEnabled                   
                    end
                end
            
                y = y + add
                if y >= 0.32 and y <= max then
                    if Toggle("Matar e não morrer",0.462,y,r3v1v3rm0rr3) then SomClick()
                       r3v1v3rm0rr3 = not r3v1v3rm0rr3

                    local p333dd = PlayerPedId()

                    Citizen.CreateThread(function()

                        while r3v1v3rm0rr3 do

                            if GetEntityHealth(p333dd) < 102 then

                                local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))

                                NetworkResurrectLocalPlayer(x,y,z,GetEntityHeading(PlayerPedId()),true,false)

                                ClearPedBloodDamage(PlayerPedId())

                                Citizen.Wait(1000)

                            end

                            Citizen.Wait(2000)

                        end

                    end)

                end

            end              
                   
            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Audio Fucker",0.462,y, audiofudidokkkj) then SomClick()
                    audiofudidokkkj = not audiofudidokkkj
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Dedo Magico (E)",0.462,y, Ragebot) then SomClick()
                    Ragebot = not Ragebot
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Falar Com Todos",0.462,y, ToggleFalarComTodos) then SomClick()
                    ToggleFalarComTodos = not ToggleFalarComTodos
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Anti Staff (GORDO)",0.462,y, fugirdogordo) then SomClick()
                    fugirdogordo = not fugirdogordo
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Toggle("Olhos Laser",0.462,y, OlhosLaser) then SomClick()
                    OlhosLaser = not OlhosLaser
                    if not executado then
                        executado = true
                    
                        -- Função para calcular direção com ajustes seguros
                        function olhoslazer(distance)
                            local camRot = GetGameplayCamRot(2)
                            local camCoord = GetGameplayCamCoord()
                    
                            local adjustedRotation = {
                                x = (math.pi / 180) * camRot.x,
                                y = (math.pi / 180) * camRot.y,
                                z = (math.pi / 180) * camRot.z
                            }
                    
                            local direction = {
                                x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
                                y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
                                z = math.sin(adjustedRotation.x)
                            }
                    
                            local destination = {
                                x = camCoord.x + direction.x * distance,
                                y = camCoord.y + direction.y * distance,
                                z = camCoord.z + direction.z * distance
                            }
                    
                            local rayHandle = StartShapeTestRay(camCoord.x, camCoord.y, camCoord.z, destination.x, destination.y, destination.z, -1, -1, 1)
                            local _, hit, endCoords, _, entityHit = GetShapeTestResult(rayHandle)
                    
                            return hit, endCoords
                        end
                    
                        -- Função para pegar as posições dos olhos com bypass leve
                        function PegarPosicaoOlhos(ped)
                            local boneHead = 31086
                            local offsetLeftEye = vector3(-0.03, 0.3, 0.0)
                            local offsetRightEye = vector3(0.03, 0.3, 0.0)
                    
                            local headPos = GetPedBoneCoords(ped, boneHead, 0.0, 0.0, 0.0)
                            local leftEyePos = GetPedBoneCoords(ped, boneHead, offsetLeftEye.x, offsetLeftEye.y, offsetLeftEye.z)
                            local rightEyePos = GetPedBoneCoords(ped, boneHead, offsetRightEye.x, offsetRightEye.y, offsetRightEye.z)
                    
                            return leftEyePos, rightEyePos
                        end
                    
                        shooting = false
                    
                        Citizen.CreateThread(function()
                            while true do
                                Citizen.Wait(1)
                    
                                if IsControlJustPressed(1, 38) then
                                    if OlhosLaser == true then
                                        shooting = true
                                    end
                                end
                    
                                if IsControlJustReleased(1, 38) or OlhosLaser == false then
                                    shooting = false
                                end
                    
                                if shooting then
                                    local playerPed = PlayerPedId()
                                    local hit, endCoords = olhoslazer(5000.0)
                                    local playerPos = GetEntityCoords(playerPed)
                    
                                    local Olho1, Olho2 = PegarPosicaoOlhos(playerPed)
                    
                                    if hit then
                                        -- Desenho das linhas e disparo ajustado
                                        DrawLine(Olho1, endCoords.x, endCoords.y, endCoords.z, 255, 0, 0, 255)
                                        DrawLine(Olho2, endCoords.x, endCoords.y, endCoords.z, 255, 0, 0, 255)
                                        local weaponHash = GetHashKey("WEAPON_PISTOL_MK2")
                   
                                        -- Ajuste para bypass de validação do disparo
                                        ShootSingleBulletBetweenCoords(
                                            Olho1.x, Olho1.y, Olho1.z,
                                            endCoords.x, endCoords.y, endCoords.z,
                                            200, -- Dano ajustado para evitar alertas
                                            false, -- Remove ricochete
                                            weaponHash,
                                            playerPed,
                                            false, -- Não altera propriedades na rede
                                            true,
                                            -1.0
                                        )
                                    end
                                end
                            end
                        end)
                    end
                end
            end
                
            if Webcamademiro then
                local DragX, DragY = Drag.DragX, Drag.DragY
                DrawSprite("webcamadmkakkkkkkk", "webcamadmkakkkkkkk", 0.900+DragX, 0.620+DragY, 0.600, 0.600, 0, 255, 255, 255, 255)
            end

    if ab4d3pr0pso then

   -- DrawSprite("MenuDisplay", "MenuDisplay", 0.620+DragX, 0.530+DragY, 0.630, 0.415, 0, 255, 255, 255, 255) 

    DrawSprite("playersget", "playersget", 0.905+DragX, 0.530+DragY, 0.600, 0.425, 0, 255, 255, 255, 255)

    DrawRect(0.745+DragX, 0.345+DragY, 0.265, 0.001,255, 0, 0,255)

    DrawText('Spawn de props',0.715+DragX, 0.325+DragY,0.23,true,false ,255,255,255,200)

    local y = 0.32+SDev.Sc["Config"].static
    local add = 0.049
    local max = 0.73
    Scroll("Config",25)

                    y = y + add
                    if y >= 0.32 and y <= max then
                    if Button("Spawnar Tubo", 0.720, y) then
                        Citizen.CreateThread(function()
                            local p = PlayerPedId()
                            if p then
                                -- Identificar o ped (jogador)
                                local playerPed = p
                        
                                -- Modelo do prop
                                local propModel = "stt_prop_stunt_tube_l"
                                local modelHash = GetHashKey(propModel)
                        
                                -- Solicitar e carregar o modelo do prop
                                RequestModel(modelHash)
                                while not HasModelLoaded(modelHash) do
                                    Wait(10)
                                end
                        
                                -- Reproduzir animação de retirando o paraquedas
                                local animDict = "amb@world_human_clipboard@male@idle_a"
                                local animName = "idle_c"
                        
                                -- Solicitar e carregar o dicionário de animações
                                RequestAnimDict(animDict)
                                while not HasAnimDictLoaded(animDict) do
                                    Wait(10)
                                end
                        
                                -- Reproduzir a animação
                                TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, 2000, 49, 0, false, false, false)
                        
                                -- Esperar até que a animação termine
                                Wait(2000)
                        
                                -- Obter as coordenadas do jogador e ajustar a altura
                                local x, y, z = table.unpack(GetEntityCoords(playerPed))
                                local groundZ = z
                                local foundGround, groundZPosition = GetGroundZFor_3dCoord(x, y, z, false)
                                if foundGround then
                                    groundZ = groundZPosition
                                end
                        
                                -- Criar o prop manualmente
                                local prop = CreateEntityManually(modelHash, vector3(x, y, groundZ))
                                if prop then
                                    -- Configurações do prop
                                    PlaceObjectOnGroundProperly(prop)
                                    SetEntityCollision(prop, false, false)
                                    FreezeEntityPosition(prop, false)
                        
                                    -- Sincronizar estado do prop com State Bags
                                    Entity(prop).state.isVisible = true
                                    Entity(prop).state.canPassThrough = true
                        
                                    -- Liberar o modelo da memória
                                    SetModelAsNoLongerNeeded(modelHash)
                                else
                                    print("^1[ERROR]^7 Falha ao criar o prop.")
                                end
                        
                                -- Limpar a animação do jogador
                                ClearPedTasks(playerPed)
                            end
                        end)
                    end
                end

                y = y + add
                if y >= 0.32 and y <= max then
                if Button("Spawnar Pista", 0.720, y) then
                    Citizen.CreateThread(function()
                        local p = PlayerPedId()
                        if p then
                            -- Identificar o ped (jogador)
                            local playerPed = p
                    
                            -- Modelo do prop
                            local propModel = "stt_prop_track_block_01"
                            local modelHash = GetHashKey(propModel)
                    
                            -- Solicitar e carregar o modelo do prop
                            RequestModel(modelHash)
                            while not HasModelLoaded(modelHash) do
                                Wait(10)
                            end
                    
                            -- Reproduzir animação de retirando o paraquedas
                            local animDict = "amb@world_human_clipboard@male@idle_a"
                            local animName = "idle_c"
                    
                            -- Solicitar e carregar o dicionário de animações
                            RequestAnimDict(animDict)
                            while not HasAnimDictLoaded(animDict) do
                                Wait(10)
                            end
                    
                            -- Reproduzir a animação
                            TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, 2000, 49, 0, false, false, false)
                    
                            -- Esperar até que a animação termine
                            Wait(2000)
                    
                            -- Obter as coordenadas do jogador e ajustar a altura
                            local x, y, z = table.unpack(GetEntityCoords(playerPed))
                            local groundZ = z
                            local foundGround, groundZPosition = GetGroundZFor_3dCoord(x, y, z, false)
                            if foundGround then
                                groundZ = groundZPosition
                            end
                    
                            -- Criar o prop manualmente
                            local prop = CreateEntityManually(modelHash, vector3(x, y, groundZ))
                            if prop then
                                -- Configurações do prop
                                PlaceObjectOnGroundProperly(prop)
                                SetEntityCollision(prop, false, false)
                                FreezeEntityPosition(prop, false)
                    
                                -- Sincronizar estado do prop com State Bags
                                Entity(prop).state.isVisible = true
                                Entity(prop).state.canPassThrough = true
                    
                                -- Liberar o modelo da memória
                                SetModelAsNoLongerNeeded(modelHash)
                            else
                                print("^1[ERROR]^7 Falha ao criar o prop.")
                            end
                    
                            -- Limpar a animação do jogador
                            ClearPedTasks(playerPed)
                        end
                    end)
                end
            end

                y = y + add
                if y >= 0.32 and y <= max then
                if Button("Spawnar Parede", 0.720, y) then
                                           Citizen.CreateThread(function()
                            local p = PlayerPedId()
                            if p then
                                -- Identificar o ped (jogador)
                                local playerPed = p
                        
                                -- Modelo do prop
                                local propModel = "stt_prop_stunt_track_straightice"
                                local modelHash = GetHashKey(propModel)
                        
                                -- Solicitar e carregar o modelo do prop
                                RequestModel(modelHash)
                                while not HasModelLoaded(modelHash) do
                                    Wait(10)
                                end
                        
                                -- Reproduzir animação de retirando o paraquedas
                                local animDict = "amb@world_human_clipboard@male@idle_a"
                                local animName = "idle_c"
                        
                                -- Solicitar e carregar o dicionário de animações
                                RequestAnimDict(animDict)
                                while not HasAnimDictLoaded(animDict) do
                                    Wait(10)
                                end
                        
                                -- Reproduzir a animação
                                TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, 2000, 49, 0, false, false, false)
                        
                                -- Esperar até que a animação termine
                                Wait(2000)
                        
                                -- Obter as coordenadas do jogador e ajustar a altura
                                local x, y, z = table.unpack(GetEntityCoords(playerPed))
                                local groundZ = z
                                local foundGround, groundZPosition = GetGroundZFor_3dCoord(x, y, z, false)
                                if foundGround then
                                    groundZ = groundZPosition
                                end
                        
                                -- Criar o prop manualmente
                                local prop = CreateEntityManually(modelHash, vector3(x, y, groundZ))
                                if prop then
                                    -- Configurações do prop
                                    PlaceObjectOnGroundProperly(prop)
                                    SetEntityCollision(prop, false, false)
                                    FreezeEntityPosition(prop, false)
                        
                                    -- Sincronizar estado do prop com State Bags
                                    Entity(prop).state.isVisible = true
                                    Entity(prop).state.canPassThrough = true
                        
                                    -- Liberar o modelo da memória
                                    SetModelAsNoLongerNeeded(modelHash)
                                else
                                    print("^1[ERROR]^7 Falha ao criar o prop.")
                                end
                        
                                -- Limpar a animação do jogador
                                ClearPedTasks(playerPed)
                            end
                        end)
                    end
                end

            y = y + add
            if y >= 0.32 and y <= max then
            if Button("Props e explosões ~r~Risco", 0.720, y) then
                detonateGrenadeAndKillNearby()
            end
        end
    end

        elseif null == "Binding" then if Selection2("Binding","Binding", 0.360, 0.590) then null = "Binding" end
        local y = 0.30+SDev.Sc["Binding"].static
        local add = 0.049
        local max = 0.73
        Scroll("Binding",25)

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Bind noclip: "..pintoplasmatico9['Label'].."", 0.462, y) then SomClick()
                    bindzinha()
                    local value, label = bindzinha()
                    pintoplasmatico9['Label'] = label
                    pintoplasmatico9['Value'] = value
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Bind do Menu: "..String312['Label'].."", 0.462, y) then SomClick()
                    bindzinha()
                    local value, label = bindzinha()
                    String312['Label'] = label
                    String312['Value'] = value
                end
            end

        elseif null == "Config" then if Selection2("Config","Config", 0.360, 0.625) then null = "Config" end
        local y = 0.30+SDev.Sc["Config"].static
        local add = 0.049
        local max = 0.73
        Scroll("Config",25)

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Bandido", 0.462, y) then SomClick()
                    roupinha()
                    changeAppearance("MAOS", 1, 1)
                    a0("HATS", 96, 0)
                    changeAppearance("CAMISA", 40, 0)
                    changeAppearance("JAQUETA", 15, 0)
                    changeAppearance("CALCA", 16, 8)
                    changeAppearance("SAPATO", 6, 0)
                    changeAppearance("MASCARA", 35, 0)
                    changeAppearance("SPECIAL2", 15, 0)
                end
            end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Macaco", 0.462, y) then SomClick()
                    local model = "a_c_chimp"
                    local modelHash = GetHashKey(model)
                
                    -- Verifica se o modelo é válido
                    if not IsModelInCdimage(modelHash) or not IsModelValid(modelHash) then
                        print("[ERRO] Modelo inválido.")
                        return
                    end
                
                    -- Solicita o modelo e espera o carregamento
                    RequestModel(modelHash)
                    local waitTime = 0
                    while not HasModelLoaded(modelHash) and waitTime < 5000 do
                        Wait(10) -- Atraso para evitar loops intensivos
                        waitTime = waitTime + 10
                    end
                
                    -- Garante que o modelo foi carregado antes de aplicar
                    if HasModelLoaded(modelHash) then
                        -- Checagem adicional antes de aplicar
                        if IsPlayerPlaying(PlayerId()) then
                            -- Altera o modelo do jogador
                            SetPlayerModel(PlayerId(), modelHash)
                
                            -- Libera o modelo da memória
                            SetModelAsNoLongerNeeded(modelHash)
                
                            print("[INFO] Modelo alterado para:", model)
                        else
                            print("[ERRO] Jogador não está ativo.")
                        end
                    else
                        print("[ERRO] Falha ao carregar o modelo.")
                    end
                end
            end

        y = y + add
        if y >= 0.32 and y <= max then
            if Button("Musculoso", 0.462, y) then SomClick()
            local model = "u_m_y_babyd"
                local modelHash = GetHashKey(model)
            
                -- Verifica se o modelo é válido
                if not IsModelInCdimage(modelHash) or not IsModelValid(modelHash) then
                    print("[ERRO] Modelo inválido.")
                    return
                end
            
                -- Solicita o modelo e espera o carregamento
                RequestModel(modelHash)
                local waitTime = 0
                while not HasModelLoaded(modelHash) and waitTime < 5000 do
                    Wait(10) -- Atraso para evitar loops intensivos
                    waitTime = waitTime + 10
                end
            
                -- Garante que o modelo foi carregado antes de aplicar
                if HasModelLoaded(modelHash) then
                    -- Checagem adicional antes de aplicar
                    if IsPlayerPlaying(PlayerId()) then
                        -- Altera o modelo do jogador
                        SetPlayerModel(PlayerId(), modelHash)
            
                        -- Libera o modelo da memória
                        SetModelAsNoLongerNeeded(modelHash)
            
                        print("[INFO] Modelo alterado para:", model)
                    else
                        print("[ERRO] Jogador não está ativo.")
                    end
                else
                    print("[ERRO] Falha ao carregar o modelo.")
                end
            end
        end

    y = y + add
    if y >= 0.32 and y <= max then
        if Button("Super AntiRP", 0.462, y) then SomClick()
            local model = "u_m_y_imporage"
            local modelHash = GetHashKey(model)
        
            -- Verifica se o modelo é válido
            if not IsModelInCdimage(modelHash) or not IsModelValid(modelHash) then
                print("[ERRO] Modelo inválido.")
                return
            end
        
            -- Solicita o modelo e espera o carregamento
            RequestModel(modelHash)
            local waitTime = 0
            while not HasModelLoaded(modelHash) and waitTime < 5000 do
                Wait(10) -- Atraso para evitar loops intensivos
                waitTime = waitTime + 10
            end
        
            -- Garante que o modelo foi carregado antes de aplicar
            if HasModelLoaded(modelHash) then
                -- Checagem adicional antes de aplicar
                if IsPlayerPlaying(PlayerId()) then
                    -- Altera o modelo do jogador
                    SetPlayerModel(PlayerId(), modelHash)
        
                    -- Libera o modelo da memória
                    SetModelAsNoLongerNeeded(modelHash)
        
                    print("[INFO] Modelo alterado para:", model)
                else
                    print("[ERRO] Jogador não está ativo.")
                end
            else
                print("[ERRO] Falha ao carregar o modelo.")
            end
        end
    end

    y = y + add
    if y >= 0.32 and y <= max then
        if Button("Flash", 0.462, y) then SomClick()
            Citizen.CreateThread(function()

                RequestModel(GetHashKey("Flash"))

                Citizen.Wait(100)

                if HasModelLoaded(GetHashKey("Flash")) then

                    SetPlayerModel(PlayerId(), GetHashKey("Flash"))
                else    

                    NotifyAviso('SKIN NÃO ENCONTRADA')

                end

            end)

        end

    end

    y = y + add
    if y >= 0.32 and y <= max then
        if Button("Anão", 0.462, y) then SomClick()
            Citizen.CreateThread(function()

                RequestModel(GetHashKey("anao_dylan"))

                Citizen.Wait(100)

                if HasModelLoaded(GetHashKey("anao_dylan")) then

                    SetPlayerModel(PlayerId(), GetHashKey("anao_dylan"))
                else    

                    NotifyAviso('SKIN NÃO ENCONTRADA')

                end

            end)

        end

    end

    y = y + add
    if y >= 0.32 and y <= max then
        if Button("Pantera cor de rosa", 0.462, y) then SomClick()
            Citizen.CreateThread(function()

                RequestModel(GetHashKey("pinkpanther"))

                Citizen.Wait(100)

                if HasModelLoaded(GetHashKey("pinkpanther")) then

                    SetPlayerModel(PlayerId(), GetHashKey("pinkpanther"))
                else    

                    NotifyAviso('SKIN NÃO ENCONTRADA')

                end

            end)

        end

    end


    y = y + add
    if y >= 0.32 and y <= max then
        if Button("Batman", 0.462, y) then SomClick()
            Citizen.CreateThread(function()

                RequestModel(GetHashKey("batman"))

                Citizen.Wait(100)

                if HasModelLoaded(GetHashKey("batman")) then

                    SetPlayerModel(PlayerId(), GetHashKey("batman"))

                else

                    NotifyAviso('SKIN NÃO ENCONTRADA')

                end

            end)

        end

    end

    y = y + add
    if y >= 0.32 and y <= max then
        if Button("Deadpool", 0.462, y) then SomClick()
            Citizen.CreateThread(function()

                RequestModel(GetHashKey("deadpool"))

                Citizen.Wait(100)

                if HasModelLoaded(GetHashKey("deadpool")) then

                    SetPlayerModel(PlayerId(), GetHashKey("deadpool"))

                else

                    NotifyAviso('SKIN NÃO ENCONTRADA')

                end

            end)

        end

    end

            y = y + add
            if y >= 0.32 and y <= max then
                if Button("Thanos", 0.462, y) then SomClick()
                    Citizen.CreateThread(function()

                        RequestModel(GetHashKey("thanos"))

                        Citizen.Wait(100)

                        if HasModelLoaded(GetHashKey("thanos")) then

                            SetPlayerModel(PlayerId(), GetHashKey("thanos"))

                        else

                            NotifyAviso('SKIN NÃO ENCONTRADA')

                        end

                    end)

                end

            end
        end

        local x, y = GetNuiCursorPosition()
        local x_, y_ = GetActiveScreenResolution()
        local cursorX, cursorY = x / x_, y / y_
        DrawText("+", cursorX, cursorY+0.003, 0.45, false, false ,255,255,255,255)
        DrawText("+", cursorX, cursorY+0.003, 0.45, false, false ,255,255,255,255)
    end

        CreateThread(function()
            while true do
                Wait(3)
            -- JOGADOR
                if Shit_pintoplasmatico9 then
                    if IsDisabledControlPressed(0, 21) then
                        Sliders['FlySpeed'].value = 3.0
                    end
                    if IsDisabledControlReleased(0, 21) then
                        Sliders['FlySpeed'].value = 0.5
                    end
                    local speed = Sliders['FlySpeed'].value
                    local speedcar = Sliders['FlySpeed'].value
                    local speedbypass = Sliders['FlySpeed'].value
                    local vehicleecheck = IsPedInAnyVehicle(PlayerPedId(), 0)
                    local player = nil
                    local x, y, z = nil
                    local Camerax, Cameray, Cameraz = camDirect()
                    local cG = PlayerPedId()
                    if not vehicleecheck then
                        player = PlayerPedId()
                        x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
                    else
                        player = GetVehiclePedIsIn(PlayerPedId(), 0)
                        x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
                    end
                    if vehicleecheck and getSeatPedIsIn(PlayerPedId()) ~= -1 then
                        requestControlOnce(player)
                    end
            
                    if vehicleecheck and IsDisabledControlPressed(0, 32) and getSeatPedIsIn(PlayerPedId()) ~= -1 then
                        x = x + speedbypass * speedcar * Camerax
                        y = y + speedbypass * speedcar * Cameray
                        z = z + speedbypass * speedcar * Cameraz
                        requestControlOnce(player)
                    end
                    if vehicleecheck and IsDisabledControlPressed(0, 269) and getSeatPedIsIn(PlayerPedId()) ~= -1 then
                        x = x - speedbypass * speedcar * Camerax
                        y = y - speedbypass * speedcar * Cameray
                        z = z - speedbypass * speedcar * Cameraz
                        requestControlOnce(player)
                    end
            
                    SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
                    if IsDisabledControlPressed(0, 32) then
                        GetVehiclePedIsIn(PlayerPedId(), strings)
                        x = x + speedbypass * Camerax
                        y = y + speedbypass * Cameray
                        z = z + speedbypass * Cameraz
                    end
                    if IsDisabledControlPressed(0, 269) then
                        GetVehiclePedIsIn(PlayerPedId(), strings)
                        x = x - speedbypass * Camerax
                        y = y - speedbypass * Cameray
                        z = z - speedbypass * Cameraz
                    end
                    if IsDisabledControlPressed(0, 22) then
                        GetVehiclePedIsIn(PlayerPedId(), strings)
                        z = z + speed
                    end
                    if IsDisabledControlPressed(0, 36) then
                        GetVehiclePedIsIn(PlayerPedId(), strings)
                        z = z - speed
                    end
                    SetEntityCoordsNoOffset(player, x, y, z, strings, strings, strings)
                end

                if ToggleSuperPulo then
                    SetBeastModeActive(PlayerId())
                    SetSuperJumpThisFrame(PlayerId())
                end
            
            if Godmode then
            NetworkSetLocalPlayerInvincibleTime(32000)
            local peed = GetPlayerPed(-1)
            SetPedRagdollOnCollision(peed, false)
            SetPedRagdollBlockingFlags(peed, 1)
            SetPedRagdollBlockingFlags(peed, 2)
            SetPedRagdollBlockingFlags(peed, 4)
            SetPedCanRagdoll(peed, false)
            SetEntityProofs(PlayerPedId(), false, false, false, false, false, false, false, false)
            end

            if dev.r0d44rm4s then

                Citizen.InvokeNative(0x9DFE13ECDC1EC196, PlayerPedId(), true)
    
                EnableControlAction(0, 37, true)
    
            end

            local ToggleModoFurtivoThread = nil
            if ToggleModoFurtivo then
                ToggleModoFurtivoThread = Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(1000)
                        if ToggleModoFurtivo and IsControlJustPressed(0, Keys['Z']) then -- Tecla z
                            SetPedStealthMovement(PlayerPedId(), true, 'DEFAULT_ACTION')
                            SetPedSeeingRange(PlayerPedId(), 0.0)
                            SetPedHearingRange(PlayerPedId(), 0.0)
                            SetPedAlertness(PlayerPedId(), 0)
                            SetPedCombatAttributes(PlayerPedId(), 46, true)
                            SetPedFleeAttributes(PlayerPedId(), 0, false)
                        end
                    end
                end)
            else
                ToggleModoFurtivo = false
            end

            if energetico then
                SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
                SetPedMoveRateOverride(PlayerPedId(), 1.49)
                energetico = true
            else
                SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
                SetPedMoveRateOverride(PlayerPedId(), 1.0)
                RestorePlayerStamina(PlayerId(),1.0)
                energetico = false
            end
        

            if modoflash then
                SetRunSprintMultiplierForPlayer(GetPlayerPed(-1), 8.49)
                SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
                SetSwimMultiplierForPlayer(GetPlayerPed(-1), 8.49)
            else
                SetRunSprintMultiplierForPlayer(GetPlayerPed(-1), 1.0)
                SetPedMoveRateOverride(GetPlayerPed(-1), 1.0)
                SetSwimMultiplierForPlayer(GetPlayerPed(-1), 1.0)
            end
        
  

            if shitkurvasnasdjatashaa then 
                        local weaponHash = GetHashKey('weapon_unarmed')
                        
                        local bypassActive = true 

                        customDamage1 = {
                            customDamage2 = 14.9 
                        }
                        
                        if bypassActive then
                            -- Define o dano customizado
                            SetWeaponDamageModifierThisFrame(weaponHash, customDamage1.customDamage2)
                        else
                            -- Dano normal
                            SetWeaponDamageModifierThisFrame(weaponHash, 1.0)
                        end
                    end
                
                    if Vehiclehim then
                        -- Obtenha as coordenadas do jogador selecionado
                        local coordenadas = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                    
                        for vehicle in EnumerateVehicles33() do
                            -- Solicitar controle da entidade
                            if NetworkRequestEntityControl(vehicle) then
                                -- Define o offset do veículo sem causar problemas de sincronização
                                SetEntityCoordsNoOffset(vehicle, coordenadas.x, coordenadas.y, coordenadas.z, true, true, true)
                    
                                -- Adicionando bypass de validações (se necessário)
                                if DoesEntityExist(vehicle) and not IsEntityAVehicle(vehicle) then
                                    SetEntityAsMissionEntity(vehicle, true, true) -- Define como uma entidade de missão
                                end
                    
                                -- Exemplo de uso de state bags
                                Entity(vehicle).state:set('movedByScript', true, true) -- Adiciona um identificador ao state bag
                            end
                        end
                    end
                    

            function RebolarNoPlayer(ativado)
                Citizen.CreateThread(function()
                    if Player_Sel then
                        if ativado then
                            local pedid = PlayerId()
                            local ped = PlayerPedId()
                            local playerPed = GetPlayerPed(SelectedPlayer)
                            local playerCoords = GetEntityCoords(playerPed)
                            playerPos = GetEntityCoords(ped)
                            if playerPed ~= pedid then
                                if playerPed == ped then
                                    ativado = false
                                    NotifyAviso('Nao Se Selecione')
                                    RebolarPlayer = false
                                else
                                    --[[local heading = GetEntityHeading(ped)
                                    local modelped = GetHashKey('mp_m_freemode_01')
                                    local model = modelped
                                    RequestModel(model)
                                    while not HasModelLoaded(model) do
                                        Citizen.Wait(100)
                                    end
                                    local pedcreate = CreatePed(31, modelped, playerPos.x, playerPos.y, playerPos.z, heading, true, false)--]]
            
                                    Wait(1)
                                    if not HasAnimDictLoaded('switch@trevor@mocks_lapdance') then
                                        RequestAnimDict('switch@trevor@mocks_lapdance')
                                        while not HasAnimDictLoaded('switch@trevor@mocks_lapdance') do
                                            Citizen.Wait(500)
                                        end
                                    end
            
                                    local boneIndex = GetEntityBoneIndexByName(playerPed, 'SKEL_ROOT')
                                    SetEntityCoords(ped, playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0, false)
                                    AttachEntityToEntity(ped, playerPed, boneIndex, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, true, true, 0, true)
                                    TaskPlayAnim(ped, 'switch@trevor@mocks_lapdance', '001443_01_trvs_28_idle_stripper', 8.0, -8.0, 50000, 1, 1.0, true, true, true) -- Comedor
                                    SetPedKeepTask(ped, true)
                                end
                            end
                        else
                            ativado = false
                            ClearPedTasksImmediately(PlayerPedId())
                            Citizen.CreateThread(function()
                                local player = PlayerId()
                                local peed = PlayerPedId()
                                local handle, entity = FindFirstPed()
                                repeat
                                    if DoesEntityExist(entity) and entity ~= Entity then
                                        DetachEntity(peed, true, false)
                                    end
                                    success, entity = FindNextPed(handle)
                                until not success
                                EndFindPed(handle)
                            end)
                            SetEntityCoords(ped, playerPos.x, playerPos.y, playerPos.z, false, false, false, false)
                            RebolarPlayer = false
                        end
                    else
                        RebolarPlayer = false
                        NotifyAviso('Selecione O Player!')
                    end
                end)
            end

            if botarfogozezdsad then
                local playerPed = GetPlayerPed(SelectedPlayer)
                local myPed = PlayerPedId()
                
                    if DoesEntityExist(playerPed) then
                        -- Obtém as coordenadas do jogador selecionado
                        local coords = GetEntityCoords(playerPed)
                
                        -- Tornar o ped invisível para os outros
                        NetworkSetEntityInvisibleToNetwork(myPed, true)
                        SetEntityVisible(myPed, false, false)
                
                        -- Anexa o ped ao alvo
                        AttachEntityToEntity(
                            myPed, playerPed, GetPedBoneIndex(playerPed, 0),
                            0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                            false, false, false, false, 2, true
                        )
                
                        -- Cria fogo no ped e no local
                        StartEntityFire(myPed)
                        StartScriptFire(coords.x, coords.y, coords.z, 10, true)
                    end
                
                    -- Checa e ajusta a vida do ped
                    if IsEntityOnFire(myPed) then
                        -- Define os valores diretamente e em state bags
                        Entity(myPed).state:set('health', 400, true)
                        SetEntityHealth(myPed, 400)
                    end
                
                    -- Aguarda e desfaz alterações
                    Wait(0)
                    DetachEntity(myPed, true, true)
                    SetEntityVisible(myPed, true, false)
                    StopEntityFire(myPed)
                
                    -- Restaura visibilidade na rede
                    NetworkSetEntityInvisibleToNetwork(myPed, false)
                end
                

            if jesusmeabencoaparaeuganharacrfkkkkpfvamem then
                local p = GetPlayerPed(SelectedPlayer)
                local hit, coord = GetPedLastWeaponImpactCoord(p)
                
                if hit then
                    -- Armazena coordenadas no state bag
                    Entity(p).state:set("impactCoords", coord, true)
                
                    -- Adiciona explosão usando as coordenadas armazenadas no state bag
                    AddExplosion(coord.x, coord.y, coord.z, 3, 100.0, true, false, 0.0)
                end
            end



            if comeroplayer then
                local playerPed = GetPlayerPed(SelectedPlayer)
                local myPed = PlayerPedId()

                        if DoesEntityExist(playerPed) then
                            local coords = GetEntityCoords(playerPed)

                            local animationDict = "rcmpaparazzo_2"
                            local animationName = "shag_loop_a"
                            
                            RequestAnimDict(animationDict)
                        
                            while not HasAnimDictLoaded(animationDict) do
                                Wait(100)
                            end
                            
                            AttachEntityToEntity(myPed, coords, 11816, 0.0, -0.5, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)

                            local flag = 49
                            local playbackRate = 1.0
                        
                            TaskPlayAnim(myPed, animationDict, animationName, playbackRate, playbackRate, -1, flag, 0, false, false, false)
                        end
        

                else
                    DetachEntity(myPed, true)
                    ClearPedTasksImmediately(myPed)
                end
    
                    
                        
                

            Citizen.CreateThread(function() while spectar do

                Wait(0)
    
                    if spectar then
    
                        DisableControlAction(0, 32, true) -- W
    
                        DisableControlAction(0, 31, true) -- S
    
                        DisableControlAction(0, 30, true) -- D
    
                        DisableControlAction(0, 34, true) -- A
    
                        DisableControlAction(0, 71, true) -- W
    
                        DisableControlAction(0, 72, true) -- S
    
                        DisableControlAction(0, 63, true) -- D
    
                        DisableControlAction(0, 64, true) -- A
    
                                local spectate_cam = spectate_cam
    
                                if not spectate_cam ~= nil then
    
                            spectate_cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
    
                        end
    
                        RenderScriptCams(1, 0, 0, 1, 1)
    
                        SetCamActive(spectate_cam, true)
    
                        local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    
                        SetCamCoord(spectate_cam, coords.x, coords.y, coords.z + 3)
    
                        local offsetRotX = 0.0
    
                        local offsetRotY = 0.0
    
                        local offsetRotZ = 0.0
    
                        local weapondelay = 0
    
                        while DoesCamExist(spectate_cam) do
    
                            Wait(0)
    
                            if not spectar then
    
                                
    
                                DestroyCam(spectate_cam, false)
    
                                ClearTimecycleModifier()
    
                                RenderScriptCams(false, false, 0, 1, 0)
    
                                SetFocusEntity(PlayerPedId())
    
                                break
    
                            end
    
                            local playerPed = GetPlayerPed(SelectedPlayer)
    
                            local playerRot = GetEntityRotation(playerPed, 2)
    
                            local rotX = playerRot.x
    
                            local rotY = playerRot.y
    
                            local rotZ = playerRot.z
    
                            offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
    
                            offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)
    
                            if (offsetRotX > 90.0) then
    
                                offsetRotX = 90.0
    
                            elseif (offsetRotX < -90.0) then
    
                                offsetRotX = -90.0
    
                            end
    
                            if (offsetRotY > 90.0) then
    
                                offsetRotY = 90.0
    
                            elseif (offsetRotY < -90.0) then
    
                                offsetRotY = -90.0
    
                            end
    
                            if (offsetRotZ > 360.0) then
    
                                offsetRotZ = offsetRotZ - 360.0
    
                            elseif (offsetRotZ < -360.0) then
    
                                offsetRotZ = offsetRotZ + 360.0
    
                            end
    
                            DisableControlAction(0, 32, true) -- W
    
                            DisableControlAction(0, 31, true) -- S
    
                            DisableControlAction(0, 30, true) -- D
    
                            DisableControlAction(0, 34, true) -- A
    
                            DisableControlAction(0, 71, true) -- W
    
                            DisableControlAction(0, 72, true) -- S
    
                            DisableControlAction(0, 63, true) -- D
    
                            DisableControlAction(0, 64, true) -- A
    
                            local x, y, z = table.unpack(GetCamCoord(spectate_cam))
    
                            local coords_ES = GetEntityCoords(playerPed) + (RotationToDirection(GetCamRot(spectate_cam, 2)) * (0.5 * 1.5))
    
                            SetCamCoord(spectate_cam, coords_ES.x-3.0, coords_ES.y, coords_ES.z + 2.0)
    
                            if not Displayed then
    
                                SetFocusArea(GetCamCoord(spectate_cam).x, GetCamCoord(spectate_cam).y, GetCamCoord(spectate_cam).z,0.0,0.0,0.0)
    
                                SetCamRot(spectate_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
    
                            end
    
                        end
    
                    end
    
                end
    
            end)
            
        
            if InfStamina then
                RestorePlayerStamina(PlayerId(), GetPlayerSprintStaminaRemaining(PlayerId()))
            end

            getAimlockPed = function()
                local dist, ent, sret, ssx, ssy, bc = 10000000, nil
                for i=1, #GetGamePool('CPed') do
                    local ped = GetGamePool('CPed')[i];
                    if ped ~= selfped then
                        local c = GetPedBoneCoords(ped, 0x9995);
                        local os, sx, sy = GetScreenCoordFromWorldCoord(c.x, c.y, c.z);
            
                        local dista = #vector2(sx - 0.5, sy - 0.5)
                        if dista < dist then
                            dist, ent, sret, ssx, ssy, bc = dista, ped, os, sx, sy, c
                        end
                    end
                end
                return ent, bc, sret, ssx, ssy
            end 

            if Aimlock then
                local ped, a, b, c, d = getAimlockPed()
                if Aimlock_peds then 
                    aped = ped 
                else
                    aped = IsPedAPlayer(ped)
                end
                if Aimlock_eads then 
                    deads = ped 
                else
                    deads = not IsEntityDead(ped)
                end
                if Aimlock_throughwalls then 
                    vis = true
                else
                    vis = HasEntityClearLosToEntity(PlayerPedId(), ped, 17) 
                end
                local hit = math.random(0, 100)
                local x, y, z = table.unpack(GetPedBoneCoords(ped, 31086))
                local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
                local c = GetPedBoneCoords(ped, 31086)
                local x1, y1, z1 = table.unpack(c)
                local selfpos, rot = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
                local angleX, angleY, angleZ = (c - selfpos).x, (c - selfpos).y, (c - selfpos).z
                local roll, pitch, yaw = -math.deg(math.atan2(angleX, angleY)) - rot.z, math.deg(math.atan2(angleZ, #vector3(angleX, angleY, 0.0))), 1.0
                roll = 0.0+(roll-0.0)
                    
                        if IsAimCamActive() then 
                            SetGameplayCamRelativeRotation(roll, pitch, yaw)                        
                        end
                    end
                
            

            
            -- VEICULO

            if HornBoost and IsPedInAnyVehicle(PlayerPedId(-1), strings) then
                if IsControlPressed(1, 38) then
                Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(PlayerPedId(-1)), 80+0.0)
                end
            end

            if espnames then
                local ansdoiadaoid = math
                local ds = GetActivePlayers()
                for T = 1, #ds do
                    local ct = ds[T]
                    if ct ~= PlayerId() and GetPlayerServerId(ct) ~= 0 then
                        local dH = GetEntityCoords(GetPlayerPed(ds[T]))
                        local dI = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), dH)
                        local dJ = Sliders['esp_distancia'].value + 0.0
                        if dI <= dJ then
                            local dK = GetPlayerPed(ct)
                            local dL, dM, dN = table.unpack(GetEntityCoords(PlayerPedId()))
                            local x, y, z = table.unpack(GetEntityCoords(dK))
                            local dd = ' ' .. GetPlayerName(ds[T]) .. ' ~w~[~s~' .. ansdoiadaoid.floor(dI) .. ' M ~w~]'
                            local dO = IsPlayerDead(dK)
                            if GetEntityHealth(dK) <= 0 then
                                dO = true
                            end
                            if dO then
                                dd = ' '
                            end
                            bY(x, y, z - 0.1, dd, 255, 255, 255)
                        end
                    end
                end
            end
            

            if puduronaocair then
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), strings)
            else
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), pintoplasmatico)
            end

            if veiculosgun then
                -- Tabela de veículos
                local cars = {"sultanrs", "blista", "zentorno", "adder", "turismo", "deviant", "thrax", "vamos"}
            
                -- Cooldown para evitar spam
                local lastSpawnTime = 0
                local spawnCooldown = 5000 -- 5 segundos de cooldown
            
                for _, playerId in pairs(GetActivePlayers()) do
                    local ped = GetPlayerPed(playerId)
                    local ret, impactPos = GetPedLastWeaponImpactCoord(ped)
            
                    -- Checa se o impacto é válido e se o cooldown foi respeitado
                    if ret and (GetGameTimer() - lastSpawnTime) > spawnCooldown then
                        lastSpawnTime = GetGameTimer()
            
                        -- Seleciona um veículo aleatório
                        local vehsp = cars[math.random(#cars)]
                        local vehHash = GetHashKey(vehsp)
            
                        -- Solicita o modelo se ainda não estiver carregado
                        if not HasModelLoaded(vehHash) then
                            RequestModel(vehHash)
                            while not HasModelLoaded(vehHash) do
                                Wait(10)
                            end
                        end
            
                        -- Cria o veículo apenas se a posição for válida
                        if impactPos and DoesEntityExist(ped) then
                            local vehicle = CreateVehicle(vehHash, impactPos.x, impactPos.y, impactPos.z, 0.0, true, true)
            
                            -- Configurações adicionais para disfarçar
                            SetVehicleNumberPlateText(vehicle, "RAND" .. math.random(1000, 9999))
                            SetEntityAsMissionEntity(vehicle, true, true)
                            SetVehicleEngineOn(vehicle, true, true, false)
                            SetModelAsNoLongerNeeded(vehHash)
            
                            -- Log para auditoria
                            print(("[INFO] Veículo %s criado por jogador %s em posição %s."):format(vehsp, GetPlayerName(playerId), json.encode(impactPos)))
                        end
                    end
                end
            end
            

            if RapidFire then
                meupenis()
            end
            
            if ToggleVeiculoFreioDeAviao then
                if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                    if IsControlPressed(1, 22) then
                        Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(GetPlayerPed(-1)), 0 + 0.0)
                    end
                else
                    NotifyAviso('Entre Em Um Veiculo')
                    ToggleVeiculoFreioDeAviao = false
                end
            end
                  
            function RGBCROCK(frequency)
                local result = {}
                local curtime = GetGameTimer() / 1000
                result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
                result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
                result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)
                return result
            end

            if ToggleVeiculoFullRgb then
                if IsPedInAnyVehicle(PlayerPedId(), 0) then
                    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                    ra = RGBCROCK(1.0)
                    SetVehicleCustomPrimaryColour(vehicle, ra.r, ra.g, ra.b)
                    SetVehicleCustomSecondaryColour(vehicle, ra.r, ra.g, ra.b)
                    ToggleVehicleMod(vehicle, 22, true)
                    SetVehicleXenonLightsCustomColor(vehicle, ra.r, ra.g, ra.b)
                    ToggleVehicleMod(vehicle, 20, true)
                    SetVehicleTyreSmokeColor(vehicle, ra.r, ra.g, ra.b)
                    SetVehicleNeonLightEnabled(vehicle, 0, true)
                    SetVehicleNeonLightEnabled(vehicle, 1, true)
                    SetVehicleNeonLightEnabled(vehicle, 2, true)
                    SetVehicleNeonLightEnabled(vehicle, 3, true)
                    SetVehicleNeonLightsColour(vehicle, ra.r, ra.g, ra.b)
                else
                    NotifyAviso('Entre Em Um Veículo')
                    ToggleVeiculoFullRgb = false
                end
            end

        function DrawTextMenu(text, x, y)
            SetTextFont(4)
            SetTextScale(0.35, 0.35)
            SetTextColour(255, 255, 255, 255)
            SetTextCentre(true)
            SetTextDropshadow(1, 0, 0, 0, 255)
            BeginTextCommandDisplayText("STRING")
            AddTextComponentSubstringPlayerName(text)
            EndTextCommandDisplayText(x, y)
        end

        -- Enumerar veículos (auxiliar)
        function EnumerateVehicles33()
            return coroutine.wrap(function()
                local handle, vehicle = FindFirstVehicle()
                local success
                repeat
                    coroutine.yield(vehicle)
                    success, vehicle = FindNextVehicle(handle)
                until not success
                EndFindVehicle(handle)
            end)
        end

            if deletarvehs then
            for dR in cw() do
                NetworkRequestControlOfEntity(dR)
                DeleteEntity(dR)
            end
            end


            function RotacionarParaDIrecao(pos)
                local rt = vec3((math.pi / 180) * pos.x, (math.pi / 180) * pos.y, (math.pi / 180) * pos.z)
                local loca = vec3(-math.sin(rt.z) * math.abs(math.cos(rt.x)), math.cos(rt.z) * math.abs(math.cos(rt.x)), math.sin(rt.x))
                return loca
            end


            function Text3d(x, y, z, Texto)
                local onScreen, _x, _y = World3dToScreen2d(x, y, z)
                local px, py, pz = table.unpack(GetGameplayCamCoords())
                local tamanho = (1 / GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)) * 2
                local cor = (1 / GetGameplayCamFov()) * 100
                tamanho = tamanho * cor
                if onScreen then
                    SetTextScale(0.0 * tamanho, 0.35 * tamanho)
                    SetTextFont(0)
                    SetTextProportional(1)
                    SetTextColour(255, 255, 255, 215)
                    SetTextDropshadow(0, 0, 0, 0, 155)
                    SetTextEdge(2, 0, 0, 0, 150)
                    SetTextDropShadow()
                    SetTextOutline()
                    SetTextEntry('STRING')
                    SetTextCentre(1)
                    AddTextComponentString(Texto)
                    DrawText(_x, _y)
                end
            end

            if segurarobjetos then
                local segurandoEntidade = false
                local segurandoEntidadeCarro = false
                local entidadeSegurada = nil
                local tipoEntidade = nil
                Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(0)
                        if segurandoEntidade and entidadeSegurada then
                            local jogadorPed = PlayerPedId()
                            local posicaoCabeca = GetPedBoneCoords(jogadorPed, 0x796e, 0.0, 0.0, 0.0)
                            Text3d(posicaoCabeca.x, posicaoCabeca.y, posicaoCabeca.z + 0.5, 'Para Dropar a Prop Aperte [Y]')
                            Text3d(posicaoCabeca.x, posicaoCabeca.y, posicaoCabeca.z + 0.4, 'Aperte [U] para apagar a(o) Prop/Carro')
                            if segurandoEntidadeCarro and not IsEntityPlayingAnim(jogadorPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 3) then
                                RequestAnimDict('anim@mp_rollarcoaster')
                                while not HasAnimDictLoaded('anim@mp_rollarcoaster') do
                                    Citizen.Wait(100)
                                end
                                TaskPlayAnim(jogadorPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 8.0, -8.0, -1, 50, 0, false, false, false)
                            elseif not IsEntityPlayingAnim(jogadorPed, 'anim@heists@box_carry@', 'idle', 3) and not segurandoEntidadeCarro then
                                RequestAnimDict('anim@heists@box_carry@')
                                while not HasAnimDictLoaded('anim@heists@box_carry@') do
                                    Citizen.Wait(100)
                                end
                                TaskPlayAnim(jogadorPed, 'anim@heists@box_carry@', 'idle', 8.0, -8.0, -1, 50, 0, false, false, false)
                            end
                            if not IsEntityAttached(entidadeSegurada) then
                                segurandoEntidade = false
                                segurandoEntidadeCarro = false
                                entidadeSegurada = nil
                            end
                        end
                    end
                end)
                Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(0)
                        local jogadorPed = PlayerPedId()
                        local posicaoCamera = GetGameplayCamCoord()
                        local rotacaoCamera = GetGameplayCamRot(2)
                        local direcao = RotacionarParaDIrecao(rotacaoCamera)
                        local destino = vec3(posicaoCamera.x + direcao.x * 10.0, posicaoCamera.y + direcao.y * 10.0, posicaoCamera.z + direcao.z * 10.0)
                        local raioHandle = StartShapeTestRay(posicaoCamera.x, posicaoCamera.y, posicaoCamera.z, destino.x, destino.y, destino.z, -1, jogadorPed, 0)
                        local _, atingiu, _, _, entidadeAtingida = GetShapeTestResult(raioHandle)
                        local alvoValido = false
                        if atingiu == 1 then
                            tipoEntidade = GetEntityType(entidadeAtingida)
                            if tipoEntidade == 3 or tipoEntidade == 2 then
                                alvoValido = true
                                local textoEntidade = tipoEntidade == 3 and 'Prop' or (tipoEntidade == 2 and 'Carro' or '')
                                local infoEntidade = 'Pressione [Y] para pegar a(o) ' .. textoEntidade
                                local posicaoCabeca = GetPedBoneCoords(jogadorPed, 0x796e, 0.0, 0.0, 0.0)
                                Text3d(posicaoCabeca.x, posicaoCabeca.y, posicaoCabeca.z + 0.5, infoEntidade)
                            end
                        end
                        if IsControlJustReleased(0, 246) then  -- Tecla Y
                            if alvoValido then
                                if not segurandoEntidade and entidadeAtingida and tipoEntidade == 3 then
                                    local mdloEntidade = GetEntityModel(entidadeAtingida)
                                    DeleteEntity(entidadeAtingida)
                                    RequestModel(mdloEntidade)
                                    while not HasModelLoaded(mdloEntidade) do
                                        Citizen.Wait(100)
                                    end
                                    local entidadeClonada = CreateObject(mdloEntidade, posicaoCamera.x, posicaoCamera.y, posicaoCamera.z, true, true, true)
                                    SetModelAsNoLongerNeeded(mdloEntidade)
                                    segurandoEntidade = true
                                    entidadeSegurada = entidadeClonada
                                    RequestAnimDict('anim@heists@box_carry@')
                                    while not HasAnimDictLoaded('anim@heists@box_carry@') do
                                        Citizen.Wait(100)
                                    end
                                    TaskPlayAnim(jogadorPed, 'anim@heists@box_carry@', 'idle', 8.0, -8.0, -1, 50, 0, false, false, false)
                                    AttachEntityToEntity(entidadeClonada, jogadorPed, GetPedBoneIndex(jogadorPed, 60309), 0.0, 0.2, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                                elseif not segurandoEntidade and entidadeAtingida and tipoEntidade == 2 then
                                    segurandoEntidade = true
                                    segurandoEntidadeCarro = true
                                    entidadeSegurada = entidadeAtingida
                                    RequestAnimDict('anim@mp_rollarcoaster')
                                    while not HasAnimDictLoaded('anim@mp_rollarcoaster') do
                                        Citizen.Wait(100)
                                    end
                                    TaskPlayAnim(jogadorPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 8.0, -8.0, -1, 50, 0, false, false, false)
                                    AttachEntityToEntity(entidadeAtingida, jogadorPed, GetPedBoneIndex(jogadorPed, 60309), 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 1, true)
                                end
                            else
                                if segurandoEntidade and segurandoEntidadeCarro then
                                    segurandoEntidade = false
                                    segurandoEntidadeCarro = false
                                    ClearPedTasks(jogadorPed)
                                    DetachEntity(entidadeSegurada, true, true)
                                    ApplyForceToEntity(entidadeSegurada, 1, direcao.x * 400, direcao.y * 400, direcao.z * 400, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
                                elseif segurandoEntidade then
                                    segurandoEntidade = false
                                    ClearPedTasks(jogadorPed)
                                    DetachEntity(entidadeSegurada, true, true)
                                    local coordenadasJogador = GetEntityCoords(PlayerPedId())
                                    SetEntityCoords(entidadeSegurada, coordenadasJogador.x, coordenadasJogador.y, coordenadasJogador.z - 1, false, false, false, false)
                                    SetEntityHeading(entidadeSegurada, GetEntityHeading(PlayerPedId()))
                                end
                            end
                        elseif IsControlJustReleased(0, 303) then  -- Tecla U
                            if segurandoEntidade or segurandoEntidadeCarro then
                                segurandoEntidade = false
                                segurandoEntidadeCarro = false
                                ClearPedTasks(jogadorPed)
                                DetachEntity(entidadeSegurada, true, true)
                                DeleteEntity(entidadeSegurada)
                            end
                        end
                    end
                end)
            end


        function getCameraDirection()
                local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
                local pitch = GetGameplayCamRelativePitch()
                local radHeading = heading * math.pi / 180.0
                local radPitch = pitch * math.pi / 180.0
            
                local x = -math.sin(radHeading)
                local y = math.cos(radHeading)
                local z = math.sin(radPitch)
            
                local len = math.sqrt(x^2 + y^2 + z^2)
                if len ~= 0 then
                    x = x / len
                    y = y / len
                    z = z / len
                end
            
                return x, y, z
            end

            local BlockPrint = nil
            if BlockPrint then
                ToggleModoFurtivoThread = Citizen.CreateThread(function()
                    RegisterNetEvent("screenshot_basic:requestScreenshot")
                    AddEventHandler(
                        "screenshot_basic:requestScreenshot",
                        function()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                
                            CancelEvent()
                        end
                    )

                    RegisterNetEvent("EasyAdmin:CaptureScreenshot")
                    AddEventHandler(
                        "EasyAdmin:CaptureScreenshot",
                        function()
                
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("requestScreenshot")
                    AddEventHandler(
                        "requestScreenshot",
                        function()
                          
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("__cfx_nui:screenshot_created")
                    AddEventHandler(
                        "__cfx_nui:screenshot_created",
                        function()
                
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("screenshot-basic")
                    AddEventHandler(
                        "screenshot-basic",
                        function()
                
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("requestScreenshotUpload")
                    AddEventHandler(
                        "requestScreenshotUpload",
                        function()
                
                            CancelEvent()
                        end
                    )
                    AddEventHandler(
                        "EasyAdmin:FreezePlayer",
                        function(P)
                
                            TriggerEvent("EasyAdmin:FreezePlayer", riquebypasassscemporcemaa)
                        end
                    )
                    
                    RegisterNetEvent("zlikiao_ac:tunnel_req")
                    AddEventHandler(
                        "vRP:likizao_ac:tunnel_req",
                        function()
                
                            TriggerserverEvent("likizao_ac:tunnel_req", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("zlikizao_ac:tunnel_req")
                    AddEventHandler(
                        "vRP:likizao_ac:tunnel_req",
                        function()
                
                            TriggerserverEvent("likizao_ac:tunnel_req", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("isAdmin")
                    AddEventHandler(
                        "isAdmin",
                        function()
                
                            TriggerserverEvent("isAdmin", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("likizao_ac:tunnel_req")
                    AddEventHandler(
                        "isAdmin",
                        function()
                
                            TriggerserverEvent("likizao_ac", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("1676171191:U27T")
                    AddEventHandler(
                        "1676171191:U27T",
                        function()
                
                            TriggerserverEvent("1676171191:U27T", "ERROR")
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("screenshot_basic:requestScreenshot")
                    AddEventHandler(
                        "screenshot_basic:requestScreenshot",
                        function()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                            CancelEvent()
                            TriggerServerEvent("requestClientScreenshot", "ERROR")
                
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("EasyAdmin:CaptureScreenshot")
                    AddEventHandler(
                        "EasyAdmin:CaptureScreenshot",
                        function()
                            
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("requestScreenshot")
                    AddEventHandler(
                        "requestScreenshot",
                        function()
                            
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("__cfx_nui:screenshot_created")
                    AddEventHandler(
                        "__cfx_nui:screenshot_created",
                        function()
                            
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("screenshot-basic")
                    AddEventHandler(
                        "print",
                        function()
                            
                            CancelEvent()
                        end
                    )
                    RegisterNetEvent("requestScreenshotUpload")
                    AddEventHandler(
                        "requestScreenshotUpload",
                        function()
                        
                            CancelEvent()
                        end
                    )
                    AddEventHandler(
                        "EasyAdmin:FreezePlayer",
                        function(P)
                        
                            TriggerEvent("EasyAdmin:FreezePlayer", riquebypasassscemporcemaa)
                        end
                    )
                end)
            else
                BlockPrint = false
            end

            

            function Bloquear_TP()
                Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(0)
                        if ToggleBlockTp1 or ToggleBlockTp2 then
                            local playerPed = PlayerPedId()
                            local playerId = PlayerId()
            
                            for _, player in ipairs(GetActivePlayers()) do
                                if player ~= playerId then
                                    local otherPlayerPed = GetPlayerPed(player)
                                    local otherPlayerCoords = GetEntityCoords(otherPlayerPed)
                                    local distance = #(GetEntityCoords(playerPed) - otherPlayerCoords)
            
                                    if ToggleBlockTp1 and distance < 20000.0 then
                                        StopPlayerTeleport()
                                        NetworkConfrontPlayer(player)
                                        ClearPedTasksImmediately(otherPlayerPed)
                                        SetEntityCoordsNoOffset(otherPlayerPed, otherPlayerCoords.x, otherPlayerCoords.y, otherPlayerCoords.z, true, true, true)
                                    end
            
                                    if ToggleBlockTp2 and distance < 20000.0 then
                                        StopPlayerTeleport()
                                        NetworkConfrontPlayer(player)
                                        ClearPedTasksImmediately(playerPed)
                                        SetEntityCoordsNoOffset(playerPed, otherPlayerCoords.x, otherPlayerCoords.y, otherPlayerCoords.z, true, true, true)
                                    end
                                end
                            end
                        end
                    end
                end)
            end

                        if LOLcarao then
                            for vehicle in EnumerateVehicles() do
                                RequestControlOnce(vehicle)
                                ApplyForceToEntity(vehicle, 1, 5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                            end
                        end

                        if isExplosionEnabled then
                            local p = PlayerPedId()
                            local hit, coord = GetPedLastWeaponImpactCoord(p)
                            
                            if hit then
                                -- Armazena coordenadas no state bag
                                Entity(p).state:set("impactCoords", coord, true)
                            
                                -- Adiciona explosão usando as coordenadas armazenadas no state bag
                                AddExplosion(coord.x, coord.y, coord.z, 4, 100.0, true, false, 1.0)
                            end
                        end

                        if Ragebot and IsDisabledControlPressed(0, Keys["E"]) then
                            for k in EnumeratePeds() do
                                if k ~= PlayerPedId() then
                                    ragezin(k)
                                end
                            end
                        end

                        if fugirdogordo then

                            for an in EnumeratePeds() do
                
                                local adm = IsEntityVisible(an)
                
                                if not adm or administrador then
                
                                    local cC = GetEntityCoords(an)
                
                                    local me = an ~= PlayerPedId()
                
                                    local mr = IsPedAPlayer(an)
                
                                    local cD = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), cC.x, cC.y, cC.z, true) * (1.6 - 0.05) -- Tamanho
                
                                    local c00rds = GetEntityCoords(PlayerPedId())
                
                                    local dismax = Sliders['n0st4ff'].value
                
                                    if cD < dismax then
                
                                        local coordx = c00rds.x
                
                                        local coordy = c00rds.y + 500
                
                        
                
                                        if me and GetEntityHealth(an) > 101 then
                
                                            for Zpos = 10, -200, -5 do
                
                                                SetEntityCoordsNoOffset(PlayerPedId(), coordx, coordy, Zpos + 0.0, true, true, true, false)
                
                                                local zPos = GetGroundZFor_3dCoord(coordx, coordy, Zpos + 0.0)
                
                                                Wait(0)
                
                                            end
                
                                            ClearDrawOrigin()
                
                                        end
                
                                    end
                
                                end
                
                            end
                
                        end
                        
                        if ToggleFalarComTodos then
                            Citizen.CreateThread(function()
                                while true do
                                    Citizen.Wait(1000)
                                    NetworkSetTalkerProximity(1000.0)
                                end
                            end)
                        else 
                        end

                        if ToggleFalarComTodos then
                            Citizen.CreateThread(function()
                                while true do
                                    Citizen.Wait(1000)
                                    NetworkSetTalkerProximity(1000.0)
                                end
                            end)
                        else
                            NetworkSetTalkerProximity(8.0)
                        end

                      

                        local function calculateFallHeight(startZ, endZ)
                            return startZ - endZ
                        end
                        
                        
                        local minFallHeight = 5.0 -- Altura mínima em metros para o veículo explodir

                        if quedaexplosao then
                            local ped = PlayerPedId()
                            if IsPedInAnyVehicle(ped, false) then
                                local vehicle = GetVehiclePedIsIn(ped, false)
                    
                                if DoesEntityExist(vehicle) and not IsEntityDead(vehicle) then
                                    local velocity = GetEntityVelocity(vehicle)
                                    local speed = math.sqrt(velocity.x^2 + velocity.y^2 + velocity.z^2)
                    
                                    -- Somente verifica se a velocidade indica movimento
                                    if speed < 1.0 then
                                        local isGrounded = IsVehicleOnAllWheels(vehicle)
                    
                                        if not isGrounded then
                                            local startZ = GetEntityCoords(vehicle).z
                    
                                            -- Espera o veículo tocar o chão
                                            while not IsVehicleOnAllWheels(vehicle) do
                                                Wait(50)
                                            end
                    
                                            local endZ = GetEntityCoords(vehicle).z
                                            local fallHeight = calculateFallHeight(startZ, endZ)
                    
                                            -- Verifica se a altura da queda foi maior que o mínimo permitido
                                            if fallHeight >= minFallHeight then
                                                -- Lança uma granada e a explode ao encostar no chão
                                                local coords = GetEntityCoords(vehicle)
                                                local grenade = CreateObject(GetHashKey("w_ex_grenadefrag"), coords.x, coords.y, coords.z + 1.0, true, true, true)
                                                SetEntityVelocity(grenade, 0.0, 0.0, -10.0) -- Força a granada cair rapidamente
                                                Wait(1000) -- Delay para simular a explosão da granada
                                                AddExplosion(GetEntityCoords(grenade), 2, 1.0, true, false, 1.0)
                                                DeleteEntity(grenade)
                                            end
                                        end
                                    end
                                end
                            end
                            end
            
                        

                        if audiofudidokkkj then
                            for k, i in pairs(GetActivePlayers()) do 
                                PlaySound(-1, 'Whoosh_1s_L_to_R', 'MP_LOBBY_SOUNDS', true)
                                PlaySound(-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', true)
                                PlaySound(-1, 'Boss_Blipped', 'GTAO_Magnate_Hunt_Boss_SoundSet', true)
                                PlaySound(-1, 'Bomb_Disarmed', 'GTAO_Speed_Convoy_Soundset', true)
                                PlaySound(-1, 'SELECT', 'HUD_MINI_GAME_SOUNDSET', true)
                                PlaySound(-1, 'Beep_Green', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', true)
                            end
                        end

                            if IsDisabledControlJustPressed(0, String312['Value']) then
                                DisplayMenu = not DisplayMenu
                            end

                            if IsDisabledControlJustPressed(0, pintoplasmatico9['Value']) then
                                Shit_pintoplasmatico9 = not Shit_pintoplasmatico9
                            end

                            if DisplayMenu then
                                Menu()
                                BlockImput()
                            end

                        end
                    end)