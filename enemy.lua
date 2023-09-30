Enemy = Object:extend()

function Enemy:new(a,b)
self.x = a
self.y = b
self.hp = 1
self.speed = 22
self.alive = true
self.path = {{1,100},{1,400},{555,444},{555,100}}
self.image = love.graphics.newImage("gobslurp-1.png")
self.targetPointer = 1
self.targPosX = true
self.targPosY = true
self.targetX = 1
self.targetY = 1
self.width = 30
self.height = 30
end

function Enemy:update(dt)
    if self.hp <= 0 and self.alive == true then
        self.alive = false
    end

    if self.targPosX then
        if self.x < self.targetX then
            self.x = self.x + self.speed
        end
    else
        if self.x > self.targetX then
            self.x = self.x - self.speed
        end
    end

    if self.targPosY then
        if self.y < self.targetY then
            self.y = self.y + self.speed
        end
    else
        if self.y > self.targetY then
            self.y = self.y - self.speed
        end
    end
end

function Enemy:draw()
    love.graphics.draw(self.image,self.x,self.y,0,2,2)
    
    --love.graphics.setColor( 1, 1, 1, 1 )
end

function Enemy:enemyPath()
    if self.targetPointer > 5 then
        self.targetPointer = 1
        self.targPosX = false
        self.targPosY = false
        self.targetX = self.path[self.targetPointer][1]
        self.targetY = self.path[self.targetPointer][2]
    else
        self.targPosX = false
        self.targPosY = false
        self.targetPointer = self.targetPointer + 1
        self.targetX = self.path[self.targetPointer][1]
        self.targetY = self.path[self.targetPointer][2]
       -- print(self.targetX)
        --[[if self.targetX > self.x then
            self.speed = self.speed * (-1)
        end
        if self.targetY > self.y and self.speed > 0 then
            self.speed = self.speed * (-1)
        end]]
    end
end