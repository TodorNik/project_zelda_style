Door = Object:extend()

function Door:new(a,b)
    self.x = a * 25
    self.y = b * 25
end

function Door:update()

end

function Door:draw()
    love.graphics.rectangle("fill", self.x, self.y,25,25)
end