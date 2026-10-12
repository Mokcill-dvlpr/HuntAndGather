require('scene')

bay = {}
bay.x = 50
bay.y = 350
bay.wdt = 50
bay.hgt = 150

bay.head = {}
bay.head.rds = bay.wdt * 0.5

bay.body = {}
bay.body.wdt = bay.wdt
bay.body.hgt = bay.hgt - bay.head.rds * 2

function placeBay()
  bay.head.x = bay.x
  bay.head.y = bay.y + bay.head.rds
  bay.body.x = bay.x - bay.body.wdt * 0.5
  bay.body.y = bay.y + bay.head.rds * 2

end

function drawBay()
  love.graphics.circle('line', bay.head.x, bay.head.y, bay.head.rds)
  love.graphics.rectangle('fill', bay.body.x, bay.body.y, bay.body.wdt, bay.body.hgt)
end

function updateBay(dt)
  if love.keyboard.isDown('right') and bay.x + bay.wdt * 0.5 < 796 then
    bay.x = bay.x + 200 * dt
  elseif love.keyboard.isDown('left') and bay.x - bay.wdt * 0.5 > 4 then
    bay.x = bay.x - 200 * dt
  elseif love.keyboard.isDown('up') and bay.y > 0 then
    bay.y = bay.y - 200 * dt
  elseif love.keyboard.isDown('down') and bay.y < floor.start - bay.hgt then
    bay.y = bay.y + 200 * dt
  end
  placeBay()
end
