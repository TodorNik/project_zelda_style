currRoom = 0
roomIndx = 0

function love.load()
    Object = require "classic"
    require "player"
    require "hud"
    tableL = {
        {1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
        {1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1}
        }
    currRoom = roomIndx
    hud = Hud()
    guy = Player()

end

function love.update()
    --player:update()
    guy:update(dt)
end

function love.draw()
    --[[for i=1,#tilemap do
        for j=1,#tilemap[i] do
            if tilemap[i][j] == 1 then
                love.graphics.rectangle("fill", i*25,j*25,25,25)
            end
        end
    end]]--
    hud:draw()

    guy:draw()
    love.graphics.setBackgroundColor( 0, 0, 1, 0 )
    if roomIndx == 0 then
    for i,row in ipairs(tableL) do
        for j,tile in ipairs(row) do
            if tile ~= 0 then
                
                --Draw the image
                love.graphics.setColor( 1, 0.5, 0, 1 )
                love.graphics.rectangle("fill", j * 25, i * 25,25,25)
                love.graphics.setColor( 1, 1, 1, 1 )
            end 
        end
    end
    end
end