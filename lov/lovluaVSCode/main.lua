if arg[2] == "debug" then
    require("lldebugger").start()
end



function love.load()
end

function love.update()
	print("Hello!")
end

function love.draw()
end


--bottom
local love_errorhandler = love.errorhandler

