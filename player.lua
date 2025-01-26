require("animation")
local Player = {}

function Player:load()
  self.x = 120
  self.y = 50
  self.startX = self.x
  self.startY = self.y
  self.width = 8
  self.height = 8
  self.xVel = 0
  self.yVel = 0
  self.maxSpeed = 100
  self.acceleration = 1000
  self.friction = 1500
  self.gravity = 800
  self.jumpAmount = -200
  self.flowers = 0
  self.health = {
    current = 3,
    max = 3
  }

  self.color = {
    red = 1,
    green = 1,
    blue = 1,
    speed = 3
  }

  self.graceTime = 0
  self.graceDuration = 0.1

  self.alive = true

  self.hasDoubleJumped = false
  self.grounded = false
  self.direction = "right"
  self.state = "idle"

  self.animation = {
    timer = 0,
    rate = 0.1,
    idle = Animation.loadAnimation(3, 10, 4),
    run = Animation.loadAnimation(7, 10, 4),
    jump = Animation.loadAnimation(11, 10, 2),
    land = Animation.loadAnimation(13, 10, 4)
  }

  self.animation.draw = self.animation.idle.sprites[1]

  self.physics = {}
  self.physics.body = love.physics.newBody(World, self.x, self.y, "dynamic")
  self.physics.body:setFixedRotation(true)
  self.physics.shape = love.physics.newRectangleShape(self.width, self.height)
  self.physics.fixture = love.physics.newFixture(self.physics.body, self.physics.shape)
end

function Player:takeDamage(amount)
  self:tintRed()
  if self.health.current - amount > 0 then
    self.health.current = self.health.current - amount
  else
    self.health.current = 0
    self:die()
  end
  print("Player health: " .. self.health.current)
end

function Player:die()
  print("Player died")
  self.alive = false
end

function Player:respawn()
  if not self.alive then
    self.physics.body:setPosition(self.startX, self.startY)
    self.health.current = self.health.max
    self.alive = true
  end
end

function Player:tintRed()
  self.color.red = 1
  self.color.green = 0
  self.color.blue = 0
end

function Player:incrementFlowers()
  self.flowers = self.flowers + 1
end

function Player:update(dt)
  self:untint(dt)
  self:respawn()
  self:syncPhysics()
  self:move(dt)
  self:applyGravity(dt)
  self:decreaseGraceTime(dt)
  self.animation = Animation.update(self.animation, self.state, dt)
  self:setDirection()
  self:setState()
end

function Player:untint(dt)
  self.color.red = math.min(self.color.red + self.color.speed * dt, 1)
  self.color.green = math.min(self.color.green + self.color.speed * dt, 1)
  self.color.blue = math.min(self.color.blue + self.color.speed * dt, 1)
end

function Player:setState()
  if not self.grounded then
    self.state = "jump"
  elseif self.xVel == 0 then
    self.state = "idle"
  else
    self.state = "run"
  end
end

function Player:setDirection()
  if self.xVel < 0 then
    self.direction = "left"
  elseif self.xVel > 0 then
    self.direction = "right"
  end
end

function Player:decreaseGraceTime(dt)
  if not self.grounded then
    self.graceTime = self.graceTime - dt
  end
end

function Player:applyGravity(dt)
  if not self.grounded then
    self.yVel = self.yVel + self.gravity * dt
  end
end

function Player:move(dt)
  if love.keyboard.isDown("d") then
    self.xVel = math.min(self.xVel + self.acceleration * dt, self.maxSpeed)
  elseif love.keyboard.isDown("a") then
    self.xVel = math.max(self.xVel - self.acceleration * dt, -self.maxSpeed)
  else
    self:applyFriction(dt)
  end
end

function Player:applyFriction(dt)
  if self.xVel > 0 then
    self.xVel = math.max(self.xVel - self.friction * dt, 0)
  elseif self.xVel < 0 then
    self.xVel = math.min(self.xVel + self.friction * dt, 0)
  end
end

function Player:syncPhysics()
  self.x, self.y = self.physics.body:getPosition()
  self.physics.body:setLinearVelocity(self.xVel, self.yVel)
end

function Player:beginContact(a, b, collision)
  if self.grounded then return end
  local nx, ny = collision:getNormal()
  if a == self.physics.fixture then
    if ny > 0 then
      self:land(collision)
      self.hasDoubleJumped = false
    elseif ny < 0 then
      self.yVel = 0
    end
  elseif b == self.physics.fixture then
    if ny < 0 then
      self:land(collision)
      self.hasDoubleJumped = false
    elseif ny > 0 then
      self.yVel = 0
    end
  end
end

function Player:land(collision)
  self.currentGroundCollision = collision
  self.yVel = 0
  self.grounded = true
  self.graceTime = self.graceDuration
end

function Player:jump(key)
  if key == "w" then
    if self.grounded or self.graceTime > 0 then
      self.yVel = self.jumpAmount
      self.grounded = false
      self.graceTime = 0
    elseif not self.hasDoubleJumped then
      self.yVel = self.jumpAmount
      self.hasDoubleJumped = true
    end
  end
end

function Player:endContact(a, b, collision)
  if a == self.physics.fixture or b == self.physics.fixture then
    if self.currentGroundCollision == collision then
      self.grounded = false
    end
  end
end

function Player:draw()
  local scaleX = 1

  if self.direction == "left" then
    scaleX = -1
  end

  love.graphics.setColor(self.color.red, self.color.green, self.color.blue)
  love.graphics.draw(SpriteSheet, self.animation.draw, self.x, self.y, 0, scaleX, 1,
    TileSize / 2, TileSize / 2)
  love.graphics.setColor(1, 1, 1)
end

return Player
