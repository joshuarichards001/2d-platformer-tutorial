love.graphics.setDefaultFilter("nearest", "nearest")
local STI = require("libraries.sti")
local Player = require("player")
local Flower = require("flower")
local GUI = require("gui")
local Spike = require("spike")

function love.load()
  Map = STI("map/2.lua", { "box2d" })
  SpriteSheet = love.graphics.newImage("assets/tiles.png")
  TileSize = 8
  World = love.physics.newWorld(0, 0)
  World:setCallbacks(beginContact, endContact)
  Map:box2d_init(World)
  Map.layers.solid.visible = false
  Player:load()
  GUI:load()
  Flower.new(250, 100)
  Flower.new(110, 30)
  Flower.new(50, 100)
  Flower.new(180, 150)
  Spike.new(65, 150)
  Spike.new(55, 150)
  Spike.new(45, 150)
  Spike.new(35, 150)
  Spike.new(25, 150)
end

function love.update(dt)
  World:update(dt)
  Player:update(dt)
  Flower.updateAll(dt)
  Spike.updateAll(dt)
  GUI:update(dt)
end

function love.draw()
  love.graphics.clear(20 / 255, 13 / 255, 29 / 255)
  Map:draw(0, 0, 4)
  love.graphics.push()
  love.graphics.scale(4, 4)

  Player:draw()
  Flower.drawAll()
  Spike.drawAll()

  love.graphics.pop()
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
