local STI = require("libraries.sti")
require("player")
love.graphics.setDefaultFilter("nearest", "nearest")

function love.load()
  Map = STI("map/1.lua", { "box2d" })
  SpriteSheet = love.graphics.newImage("assets/tiles.png")
  TileSize = 8
  World = love.physics.newWorld(0, 0)
  World:setCallbacks(beginContact, endContact)
  Map:box2d_init(World)
  Map.layers.solid.visible = false
  Player:load()
end

function love.update(dt)
  World:update(dt)
  Player:update(dt)
end

function love.draw()
  love.graphics.clear(20 / 255, 13 / 255, 29 / 255)
  Map:draw(0, 0, 4)
  love.graphics.push()
  love.graphics.scale(4, 4)
  Player:draw()
  love.graphics.pop()
end

function love.keypressed(key)
  Player:jump(key)
end

function beginContact(a, b, collision)
  Player:beginContact(a, b, collision)
end

function endContact(a, b, collision)
  Player:endContact(a, b, collision)
end
