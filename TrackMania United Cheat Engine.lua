-- TrackMania United Cheat Menu by Your Name

-- Create the cheat menu
function createCheatMenu()
    local menu = createMenu("TrackMania United Cheats")

    -- Add speed hack option
    addMenuItem(menu, "Speed Hack", function()
        local speed = readFloat(getAddress("speed_address"))
        speed = speed * 2 -- Double the speed
        writeFloat(getAddress("speed_address"), speed)
    end)

    -- Add nitro hack option
    addMenuItem(menu, "Nitro Hack", function()
        local nitro = readFloat(getAddress("nitro_address"))
        nitro = nitro + 50 -- Add 50 nitro
        writeFloat(getAddress("nitro_address"), nitro)
    end)

    -- Add teleport hack option
    addMenuItem(menu, "Teleport Hack", function()
        local x, y, z = readFloat(getAddress("x_address")), readFloat(getAddress("y_address")), readFloat(getAddress("z_address"))
        x, y, z = x + 100, y + 100, z + 100 -- Teleport 100 units forward
        writeFloat(getAddress("x_address"), x)
        writeFloat(getAddress("y_address"), y)
        writeFloat(getAddress("z_address"), z)
    end)

    -- Add infinite health option
    addMenuItem(menu, "Infinite Health", function()
        writeFloat(getAddress("health_address"), 100) -- Set health to 100
    end)

    -- Add exit option
    addMenuItem(menu, "Exit", function()
        destroyMenu(menu)
    end)

    -- Show the cheat menu
    showMenu(menu)
end

-- Get the addresses of the game variables
function getAddress(name)
    local address = getAddressByName(name)
    if address == 0 then
        error("Address not found: ".. name)
    end
    return address
end

-- Initialize the cheat menu
createCheatMenu()