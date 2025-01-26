local Player = require("player")

local Spike = {}
Spike.__index = Spike
Spike.width = 8
Spike.height = 8

ActiveSpikes = {}

function Spike.new(x, y)
  local instance = setmetatable({}, Spike)
  instance.x = x
  instance.y = y

  instance.sprite = love.graphics.newQuad(
    0 * TileSize,
    4 * TileSize,
    TileSize,
    TileSize,
    SpriteSheet:getDimensions()
  )

  instance.damage = 1

  instance.physics = {}
  instance.physics.body = love.physics.newBody(World, instance.x, instance.y, "static")
  instance.physics.shape = love.physics.newRectangleShape(instance.width, instance.height)
  instance.physics.fixture = love.physics.newFixture(instance.physics.body, instance.physics.shape)
  instance.physics.fixture:setSensor(true)
  table.insert(ActiveSpikes, instance)
end

function Spike:update(dt)

end

function Spike:draw()
  love.graphics.draw(SpriteSheet, self.sprite, self.x, self.y, 0, self.scale, 1, self.width / 2, self.height / 2)
end

function Spike.updateAll(dt)
  for i, instance in ipairs(ActiveSpikes) do
    instance:update(dt)
  end
end

function Spike.drawAll()
  for i, instance in ipairs(ActiveSpikes) do
    instance:draw()
  end
end

function Spike.beginContact(a, b, collision)
  for i, instance in ipairs(ActiveSpikes) do
    if a == instance.physics.fixture or b == instance.physics.fixture then
      if a == Player.physics.fixture or b == Player.physics.fixture then
        Player:takeDamage(instance.damage)
        return true
      end
    end
  end
end

return Spike
