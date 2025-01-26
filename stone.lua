local Stone = {}
Stone.__index = Stone
Stone.width = 8
Stone.height = 8

ActiveStones = {}

function Stone.new(x, y)
  local instance = setmetatable({}, Stone)
  instance.x = x
  instance.y = y
  instance.r = 0

  instance.sprite = love.graphics.newQuad(
    5 * TileSize,
    2 * TileSize,
    TileSize,
    TileSize,
    SpriteSheet:getDimensions()
  )

  instance.physics = {}
  instance.physics.body = love.physics.newBody(World, instance.x, instance.y, "dynamic")
  instance.physics.body:setMass(25)
  instance.physics.shape = love.physics.newRectangleShape(instance.width, instance.height)
  instance.physics.fixture = love.physics.newFixture(instance.physics.body, instance.physics.shape)
  table.insert(ActiveStones, instance)
end

function Stone:update(dt)
  self:syncPhysics()
end

function Stone:syncPhysics()
  self.x, self.y = self.physics.body:getPosition()
  self.r = self.physics.body:getAngle()
end

function Stone:draw()
  love.graphics.draw(SpriteSheet, self.sprite, self.x, self.y, self.r, self.scale, 1, self.width / 2, self.height / 2)
end

function Stone.updateAll(dt)
  for i, instance in ipairs(ActiveStones) do
    instance:update(dt)
  end
end

function Stone.drawAll()
  for i, instance in ipairs(ActiveStones) do
    instance:draw()
  end
end

return Stone
