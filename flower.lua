local Player = require("player")

local Flower = {}
Flower.__index = Flower
local ActiveFlowers = {}

function Flower.new(x, y)
  local instance = setmetatable({}, Flower)
  instance.x = x
  instance.y = y
  instance.sprite = love.graphics.newQuad(
    1 * TileSize,
    0 * TileSize,
    TileSize,
    TileSize,
    SpriteSheet:getDimensions()
  )
  instance.width = 8
  instance.height = 8
  instance.scale = 1
  instance.randomTimeOffset = math.random(0, 100)
  instance.toBeRemoved = false

  instance.physics = {}
  instance.physics.body = love.physics.newBody(World, instance.x, instance.y, "static")
  instance.physics.shape = love.physics.newRectangleShape(instance.width, instance.height)
  instance.physics.fixture = love.physics.newFixture(instance.physics.body, instance.physics.shape)
  instance.physics.fixture:setSensor(true)
  table.insert(ActiveFlowers, instance)
end

function Flower:remove()
  for i, instance in ipairs(ActiveFlowers) do
    if instance == self then
      Player:incrementFlowers()
      table.remove(ActiveFlowers, i)
      self.physics.body:destroy()
      return
    end
  end
end

function Flower.removeAll()
  for i, instance in ipairs(ActiveFlowers) do
    instance.physics.body:destroy()
  end
  ActiveFlowers = {}
end

function Flower:update(dt)
  self:spin(dt)
  self:checkRemove()
end

function Flower:checkRemove()
  if self.toBeRemoved then
    self:remove()
  end
end

function Flower:spin(dt)
  self.scale = math.sin(love.timer.getTime() * 2 + self.randomTimeOffset)
end

function Flower:draw()
  love.graphics.draw(SpriteSheet, self.sprite, self.x, self.y, 0, self.scale, 1, self.width / 2, self.height / 2)
end

function Flower.updateAll(dt)
  for i, instance in ipairs(ActiveFlowers) do
    instance:update(dt)
  end
end

function Flower.drawAll()
  for i, instance in ipairs(ActiveFlowers) do
    instance:draw()
  end
end

function Flower.beginContact(a, b, collision)
  for i, instance in ipairs(ActiveFlowers) do
    if a == instance.physics.fixture or b == instance.physics.fixture then
      if a == Player.physics.fixture or b == Player.physics.fixture then
        instance.toBeRemoved = true
        return true
      end
    end
  end
end

return Flower
