

--x and y of the player

function love.load()
player= {}
player.x=0
player.y=0
player.bullets ={}

--player fire function
player.fire = function()
bullet={}
bullet.x=player.x
bullet.y=player.y
table.insert(player.bullets,bullet)

end


end

function love.update(dt)

--right and left
if love.keyboard.isDown("right")then
player.x=player.x+1
elseif love.keyboard.isDown("left")then
player.x=player.x-1
end

-- up and down

if love.keyboard.isDown("up")then
player.y=player.y-1
elseif love.keyboard.isDown("down")then
player.y=player.y+1
end

if love.keyboard.isDown("space")then
player.fire()
end

for _,v in pairs(player.bullets) do
 v.y=v.y+1
        end



end

function love.draw()
--           255max     r g b
 love.graphics.setColor(0,0,255)
 love.graphics.rectangle("fill",player.x,player.y,100,100)
 for _,v in pairs(player.bullets) do
        love.graphics.rectangle("fill",v.x,v.y,10,10)
 love.graphics.setColor(255,255,255)
end
end
