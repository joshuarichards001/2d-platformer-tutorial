local Enemy = {}
Enemy.__index = Enemy
local Player = require("player")

Enemy.width = 8
Enemy.height = 8

ActiveEnemys = {}

function Enemy.new(x, y)
  local instance = setmetatable({}, Enemy)
  instance.x = x
  instance.y = y
  instance.r = 0

  instance.animation = {
    timer = 0,
    rate = 0.1,
    run = Animation.loadAnimation(7, 11, 4),
  }

  instance.animation.draw = instance.animation.run.sprites[1]

  instance.physics = {}
  instance.physics.body = love.physics.newBody(World, instance.x, instance.y, "dynamic")
  instance.physics.body:setFixedRotation(true)
  instance.physics.body:setMass(25)
  instance.physics.shape = love.physics.newRectangleShape(instance.width, instance.height)
  instance.physics.fixture = love.physics.newFixture(instance.physics.body, instance.physics.shape)
  table.insert(ActiveEnemys, instance)
end

function Enemy:update(dt)
  self:syncPhysics()
  self.animation = Animation.update(self.animation, "run", dt)
end

function Enemy:syncPhysics()
  self.x, self.y = self.physics.body:getPosition()
  self.r = self.physics.body:getAngle()
end

function Enemy:draw()
  love.graphics.draw(SpriteSheet, self.animation.draw, self.x, self.y, self.r, self.scale, 1, self.width / 2,
  self.height / 2)
end

function Enemy.updateAll(dt)
  for i, instance in ipairs(ActiveEnemys) do
    instance:update(dt)
  end
end

function Enemy.drawAll()
  for i, instance in ipairs(ActiveEnemys) do
    instance:draw()
  end
end

return Enemy
