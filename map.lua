local STI = require("libraries.sti")
local Flower = require("flower")
local Spike = require("spike")
local Stone = require("stone")
local Enemy = require("enemy")
local Player = require("player")

local Map = {}

function Map:load()
  self.currentLevel = 1
  World = love.physics.newWorld(0, 2000)
  World:setCallbacks(beginContact, endContact)
  self:init()
end

function Map:init()
  self.level = STI("map/" .. self.currentLevel .. ".lua", { "box2d" })

  self.level:box2d_init(World)
  self.solidLayer = self.level.layers.solid
  self.entityLayer = self.level.layers.entity
  self.groundLayer = self.level.layers.ground

  self.solidLayer.visible = false
  self.entityLayer.visible = false
  MapWidth = self.groundLayer.width * 8
  MapHeight = self.groundLayer.height * 8

  self:spawnEntities()
end

function Map:next()
  self:clean()
  self.currentLevel = self.currentLevel + 1
  self:init()
  Player:resetPosition()
end

function Map:clean()
  self.level:box2d_removeLayer("solid")
  Flower.removeAll()
  Spike.removeAll()
  Stone.removeAll()
  Enemy.removeAll()
end

function Map:update()
  if Player.y > MapHeight or Player.x > MapWidth then
    self:next()
  end
end

function Map:spawnEntities()
  for i, v in ipairs(self.entityLayer.objects) do
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

return Map
