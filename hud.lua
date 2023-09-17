Hud = Object:extend()

function Hud:new()
    self.hp = 3
    self.inventory = {}
    self.area = "Start"
end

function Hud:update(dt)

end

function Hud:draw()
    love.graphics.print("This is the HUD element", 2,2,0,1,1)
    love.graphics.print("Health "..self.hp, 10,10,0,2,2)
    love.graphics.rectangle("line",1,1,800,100)
end