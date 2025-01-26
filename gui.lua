local Player = require("player")

local GUI = {}

function GUI:load()
  self.flowers = {}
  self.flowers.sprite = love.graphics.newQuad(
    1 * TileSize,
    0 * TileSize,
    TileSize,
    TileSize,
    SpriteSheet:getDimensions()
  )
  self.flowers.width = 8
  self.flowers.height = 8
  self.flowers.scale = 8
  self.flowers.x = love.graphics.getWidth() - 200
  self.flowers.y = 50

  self.hearts = {}
  self.hearts.sprite = love.graphics.newQuad(
    3 * TileSize,
    9 * TileSize,
    TileSize,
    TileSize,
    SpriteSheet:getDimensions()
  )
  self.hearts.width = 8
  self.hearts.height = 8
  self.hearts.x = 0
  self.hearts.y = 30
  self.hearts.scale = 8
  self.hearts.spacing = self.hearts.width * self.hearts.scale + 30

  self.font = love.graphics.newFont("assets/Fredoka-Bold.ttf", 36)
end

function GUI:update(dt)

end

function GUI:draw()
  self:displayFlowers()
  self:displayHearts()
end

function GUI:displayHearts()
  for i = 1, Player.health.current do
    local x = self.hearts.x + i * self.hearts.spacing
    local y = self.hearts.y
    love.graphics.draw(SpriteSheet, self.hearts.sprite, x, y, 0,
      self.hearts.scale, self.hearts.scale, self.hearts.width / 2, self.hearts.height / 2)
  end
end

function GUI:displayFlowers()
  love.graphics.draw(SpriteSheet, self.flowers.sprite, self.flowers.x, self.flowers.y, 0, self.flowers.scale,
    self.flowers.scale, self.flowers.width / 2, self.flowers.height / 2)
  love.graphics.setFont(self.font)

  local x = self.flowers.x + self.flowers.width / 2 * self.flowers.scale
  local y = self.flowers.y + self.flowers.height / 2 * self.flowers.scale - self.font:getHeight()

  love.graphics.setColor(0, 200, 200, 0.5)
  love.graphics.print(" : " .. Player.flowers, x + 3, y + 3)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.print(" : " .. Player.flowers, x, y)
end

return GUI