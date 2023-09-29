function love.load()

love.window.setTitle("Gaming")
width = love.graphics.getWidth()
height = love.graphics.getHeight()
love.window.setMode(width, height, {fullscreen=false, fullscreentype = "desktop", borderless=false,centered=true, borderless=false})

Player = {
    posX = 10,
    posY = 10,
    speed = 10,
    life = 3
}
end

function love.update(dt)

if love.keyboard.isDown("d") then
    if   (Player.posX + Player.speed < width) then
        Player.posX = Player.posX+(Player.speed*dt) 
    end
end

if love.keyboard.isDown("a") then
    if   (Player.posX - Player.speed > 0 ) then
        Player.posX = Player.posX+(Player.speed*dt) 
    end
end

if love.keyboard.isDown("w") then
    if   (Player.posY + Player.speed > 0 ) then
        Player.posY = Player.posY-(Player.speed*dt) 
    end
end

if love.keyboard.isDown("s") then
    if   (Player.posY - Player.speed < height ) then
        Player.posY = Player.posY+(Player.speed*dt) 
    end
end

end



function love.draw( )
    
    

    love.graphics.setColor(0,0.4,0.4)
    love.graphics.rectangle("fill",Player.posX,Player.posY,20,20)
end