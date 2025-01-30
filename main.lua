love.graphics.setDefaultFilter("nearest", "nearest")
local Player = require("player")
local Flower = require("flower")
local GUI = require("gui")
local Spike = require("spike")
local Camera = require("camera")
local Stone = require("stone")
local Enemy = require("enemy")
local Map = require("map")

function love.load()
  SpriteSheet = love.graphics.newImage("assets/tiles.png")
  TileSize = 8
  Map:load()
  Player:load()
  GUI:load()
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
  Map:update()
end

function love.draw()
  love.graphics.clear(20 / 255, 13 / 255, 29 / 255)
  Map.level:draw(-Camera.x, -Camera.y, Camera.scale, Camera.scale)

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
  Enemy.beginContact(a, b, collision)
  Player:beginContact(a, b, collision)
end

function endContact(a, b, collision)
  Player:endContact(a, b, collision)
end
