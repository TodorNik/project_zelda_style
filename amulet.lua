Amulet = Object:extend()

function Amulet:new(a,b,c)
self.x = a
self.y = b
self.img = love.graphics.newImage("projectile.png")
self.direction = c
self.offset = 1.5
self.width = 24 
self.height = 24
end

function Amulet:update()
    if self.direction == 1 then
        self.y = self.y - 5
        self.offset = -1.5
    elseif self.direction == 2 then
        self.x = self.x + 5
        self.offset = 0
    elseif self.direction == 3 then
        self.y = self.y + 5
        self.offset = 1.5
    elseif self.direction == 4 then
        self.x = self.x - 5
        self.offset = 3
    end
end

function Amulet:draw()
    love.graphics.draw(self.img, self.x, self.y, self.offset , 1, 1,16,16)
end