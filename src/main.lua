function love.load()

love.window.setTitle("Gaming")
width = love.graphics.getWidth()
height = love.graphics.getHeight()
love.window.setMode(width, height, {fullscreen=false, fullscreentype = "desktop", borderless=false,centered=true, borderless=false})

Player = {
    posX = (width/2),
    posY = (height/2),
    speed = 40,
    attack = 1,
    life = 10,
    level = 1,
    exp = 0,
    expMax = 50,
    Height = 20,
    Width = 20,
    Score = 0,
    Time = 0,
    IFrame = 0
}

Enemy = {
    posX = 10,
    posY = 10,
    damage = 1,
    speed = 35,
    life = 5,
    exp = 5,
    Height = 20,
    Width = 20
}

end

function Damage(Player, Enemy)
    if (Player.IFrame == 0) then
        if (Player.posY == Enemy.posY ) then

            if (Player.posX == Enemy.posX) then
                Player.IFrame = 10
                Player.life = Player.life - 1
            end
        end
    end
end


function love.update(dt)

if  (Player.IFrame > 0) then
    Player.IFrame = -1
end

if love.keyboard.isDown("d") then
    if   (Player.posX + Player.speed < width) then
        Player.posX = Player.posX+(Player.speed*dt) 
    end
end

if love.keyboard.isDown("a") then
    if   (Player.posX - Player.speed > 0 ) then
        Player.posX = Player.posX-(Player.speed*dt) 
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
    love.graphics.rectangle("fill",Player.posX,Player.posY,Player.Height,Player.Width)
end