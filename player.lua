Player = Object:extend()

function Player:new()
self.x = 100
self.y = 100
self.hp = 3
self.speed = 55
self.alive = true

end

function Player:update(dt)
if self.hp <= 0 and self.alive == true then
    self.alive = false
if love.keyboard.isDown("up") then
    self.y = self.y - self.speed * dt
elseif love.keyboard.isDown("down") then
    self.y = self.y + self.speed * dt
elseif love.keyboard.isDown("left") and self.x > 0 then
    self.x = self.x - self.speed * dt
elseif love.keyboard.isDown("right") then
    self.x = self.x + self.speed * dt
end
end
end

function Player:draw()
    love.graphics.setColor( 1, 0, 0, 0 )
    love.graphics.circle("line", self.x , self.y , 100,100)
    --love.graphics.setColor( 1, 1, 1, 1 )
end