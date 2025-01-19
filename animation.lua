Animation = {}

function Animation.loadAnimation(startX, startY, frameCount)
  local frames = {}
  for i = 1, frameCount do
    frames[i] = love.graphics.newQuad(
      (startX + i - 1) * TileSize,
      startY * TileSize,
      TileSize,
      TileSize,
      SpriteSheet:getDimensions()
    )
  end
  return { total = frameCount, current = 1, sprites = frames }
end

function Animation.update(animation, state, dt)
  animation.timer = animation.timer + dt
  if animation.timer > animation.rate then
    animation.timer = 0
    animation = Animation.setNewFrame(animation, state)
  end

  return animation
end

function Animation.setNewFrame(animation, state)
  local anim = animation[state]

  if anim.current < anim.total then
    anim.current = anim.current + 1
  else
    anim.current = 1
  end

  animation.draw = anim.sprites[anim.current]

  return animation
end
