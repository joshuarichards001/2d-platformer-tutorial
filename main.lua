love.graphics.setDefaultFilter("nearest", "nearest")
local STI = require("libraries.sti")
local Player = require("player")
local Flower = require("flower")
local GUI = require("gui")
local Spike = require("spike")
local Camera = require("camera")
local Stone = require("stone")
local Enemy = require("enemy")

function love.load()
  Map = STI("map/2.lua", { "box2d" })
  SpriteSheet = love.graphics.newImage("assets/tiles.png")
  TileSize = 8
  World = love.physics.newWorld(0, 2000)
  World:setCallbacks(beginContact, endContact)
  Map:box2d_init(World)
  MapWidth = Map.layers.ground.width * TileSize
  Map.layers.solid.visible = false
  Map.layers.entity.visible = false
  Player:load()
  GUI:load()
  spawnEntities()
end

function love.update(dt)
  World:update(dt)
  Player:update(dt)
  Flower.updateAll(dt)
  Spike.updateAll(dt)
  Stone.updateAll(dt)
  Enemy.updateAll(dt)
  GUI:update(dt)
  Camera:setPosition(Player.x, 0)
end

function love.draw()
  love.graphics.clear(20 / 255, 13 / 255, 29 / 255)
  Map:draw(-Camera.x, -Camera.y, Camera.scale, Camera.scale)

  Camera:apply()
  Player:draw()
  Flower.drawAll()
  Spike.drawAll()
  Stone.drawAll()
  Enemy.drawAll()
  Camera:clear()

  GUI:draw()
end

function love.keypressed(key)
  Player:jump(key)
end

function beginContact(a, b, collision)
  if Flower.beginContact(a, b, collision) then return end
  if Spike.beginContact(a, b, collision) then return end
  Player:beginContact(a, b, collision)
end

function endContact(a, b, collision)
  Player:endContact(a, b, collision)
end

function spawnEntities()
  for i, v in ipairs(Map.layers.entity.objects) do
    if v.type == "flower" then
      Flower.new(v.x, v.y)
    elseif v.type == "spike" then
      Spike.new(v.x + v.width / 2, v.y + v.height / 2)
    elseif v.type == "stone" then
      Stone.new(v.x + v.width / 2, v.y + v.height / 2)
    elseif v.type == "enemy" then
      Enemy.new(v.x + v.width / 2, v.y + v.height / 2)
    end
  end
end
