local Enemy = {}
Enemy.__index = Enemy
local Player = require("player")

Enemy.width = 8
Enemy.height = 8

ActiveEnemies = {}

function Enemy.new(x, y)
  local instance = setmetatable({}, Enemy)
  instance.x = x
  instance.y = y
  instance.r = 0

  instance.speed = 50
  instance.speedMod = 1
  instance.xVel = instance.speed

  instance.rageCounter = 0
  instance.rageTrigger = 3

  instance.damage = 1

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
  table.insert(ActiveEnemies, instance)
end

function Enemy:update(dt)
  self:syncPhysics()
  self.animation = Animation.update(self.animation, "run", dt)
end

function Enemy.removeAll()
  for i, instance in ipairs(ActiveEnemies) do
    instance.physics.body:destroy()
  end
  ActiveEnemies = {}
end

function Enemy:incrementRage()
  self.rageCounter = self.rageCounter + 1
  if self.rageCounter > self.rageTrigger then
    self.speedMod = 2
    self.rageCounter = 0
  else
    self.speedMod = 1
  end
end

function Enemy:flip()
  self.xVel = -self.xVel
end

function Enemy:syncPhysics()
  self.x, self.y = self.physics.body:getPosition()
  self.physics.body:setLinearVelocity(self.xVel * self.speedMod, 100)
end

function Enemy:draw()
  local scale = 1
  if self.xVel < 0 then
    scale = -1
  end

  love.graphics.draw(SpriteSheet, self.animation.draw, self.x, self.y, self.r, scale, 1, self.width / 2,
    self.height / 2)
end

function Enemy.updateAll(dt)
  for i, instance in ipairs(ActiveEnemies) do
    instance:update(dt)
  end
end

function Enemy.drawAll()
  for i, instance in ipairs(ActiveEnemies) do
    instance:draw()
  end
end

function Enemy.beginContact(a, b, collision)
  for i, instance in ipairs(ActiveEnemies) do
    if a == instance.physics.fixture or b == instance.physics.fixture then
      if a == Player.physics.fixture or b == Player.physics.fixture then
        Player:takeDamage(instance.damage)
      end

      instance:incrementRage()
      instance:flip()
    end
  end
end

return Enemy
