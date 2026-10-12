floor = {}
floor.start = 500
floor.width = 800




function drawFloor()
  for i = 0, 7, 1 do 
    love.graphics.setColor(0,0,0,1)
    love.graphics.polygon('fill',
      0+100*i, 600,
      0+100*i, 500,
      100+100*i, 600  )
    love.graphics.setColor(1,1,1,1)
    love.graphics.polygon('fill',
      0+100*i, 500,
      100+100*i, 600,
      100+100*i, 500  )
  end
end

function drawRoof()
  love.graphics.setColor(1,1,1,1)
  love.graphics.polygon('fill',
    0,0,
    0,100,
    400,50,
    800,100,
    800,0,
    0,0  )
end

function drawScene()
  drawRoof()
  drawFloor()
end