local M = {}

local function css2rgb(rgb)
  local r = tonumber(string.sub(rgb, 2, 2) .. string.sub(rgb, 3, 3), 16)
  local g = tonumber(string.sub(rgb, 4, 4) .. string.sub(rgb, 5, 5), 16)
  local b = tonumber(string.sub(rgb, 6, 6) .. string.sub(rgb, 7, 7), 16)
  return r, g, b
end

local function rgb2css(r, g, b)
  return string.format("#%.2x%.2x%.2x", r, g, b)
end

local function rgb2hsl(r, g, b)
  local h, s, l, max, min, delta

  r, g, b = r / 255, g / 255, b / 255
  max, min = math.max(r, g, b), math.min(r, g, b)
  delta = max - min

  if delta == 0 then
    h = 0
    s = 0
  else
    if max == r then
      -- note: works for both positive and negative numbers
      h = ((g - b) / delta) % (g < b and 6 or 0)
    elseif max == g then
      h = ((b - r) / delta) + 2
    elseif max == b then
      h = ((r - g) / delta) + 4
    end
  end

  l = (max + min) / 2

  if delta == 0 then
    s = 0
  else
    s = delta / (1 - math.abs(2 * l - 1))
  end

  return h * 60 < 0 and h * 60 + 360 or h * 60, s, l
end

local function hsl2rgb(h, s, l)
  local a = s * math.min(l, 1 - l)

  local function f(n)
    local k = (n + h / 30) % 12
    local color = l - a * math.max(math.min(k - 3, 9 - k, 1), -1)
    return math.floor(255 * color)
  end

  return f(0), f(8), f(4)
end

local function rgb2hsv(r, g, b)
  r, g, b = r / 255, g / 255, b / 255

  local min, max = math.min(r, g, b), math.max(r, g, b)
  local diff = max - min

  local s, h

  if max == r and g >= b then
    h = math.fmod(60 * (g - b) / (max - min), 360.0)
  elseif max == r and g < b then
    h = math.fmod(60 * (g - b) / (max - min) + 360, 360.0)
  elseif max == g then
    h = math.fmod(60 * (b - r) / (max - min) + 120, 360.0)
  elseif max == b then
    h = math.fmod(60 * (r - g) / (max - min) + 240, 360.0)
  else
    h = 0
  end

  if max == 0 then
    s = 0
  else
    s = diff / max
  end

  return h, s, max
end

local function hsv2rgb(h, s, v)
  local r, g, b

  if s <= 0 then
    -- If the saturation is 0, then all colors are the same.
    r, g, b = v, v, v
  else
    -- Calculate the appropriate sector of a 6-part color wheel
    local sectorPos = (h >= 360) and 0 or h / 60
    local sectorNumber = math.floor(sectorPos)

    -- Get the fractional part of the sector
    -- (that is, how many degrees into the sector you are)
    local fractionalSector = sectorPos - sectorNumber

    -- Calculate values for the three axes of the color
    local p = v * (1 - s)
    local q = v * (1 - (s * fractionalSector))
    local t = v * (1 - (s * (1 - fractionalSector)))

    -- Assign the fractional colors to red, green, and blue
    -- components based on the sector the angle is in
    if sectorNumber == 0 or sectorNumber == 6 then
      r, g, b = v, t, p
    elseif sectorNumber == 1 then
      r, g, b = q, v, p
    elseif sectorNumber == 2 then
      r, g, b = p, v, t
    elseif sectorNumber == 3 then
      r, g, b = p, q, v
    elseif sectorNumber == 4 then
      r, g, b = t, p, v
    else -- sectorNumber 5
      r, g, b = v, p, q
    end
  end

  -- Scale the red, green, and blue values to be between 0 and 255
  r, g, b = math.floor(r * 255), math.floor(g * 255), math.floor(b * 255)
  return r, g, b
end

-- @brief Increases the lightness of the color by a percentage
-- @param css string CSS color
-- @param alpha number number between 0 and 1 (0 = css, 1 = white)
function M.lighten(css, alpha)
  local h, s, l = rgb2hsl(css2rgb(css))
  return rgb2css(hsl2rgb(h, s, l + alpha))
end

-- @brief Makes the color darker by adjusting the brightness
-- @param css string CSS color
-- @param alpha number number between 0 and 1 (0 = css, 1 = black)
function M.darken(css, alpha)
  local h, s, v = rgb2hsv(css2rgb(css))
  return rgb2css(hsv2rgb(h, s, v - alpha))
end

-- @brief Blends foreground and background colors
-- @param fg string foreground color in CSS color format
-- @param bg string background color in CSS color format
-- @param alpha number number between 0 and 1 (0 = bg and 1 = fg)
-- Inspired by fole/tokyonight.nvim
function M.blend(fg, bg, alpha)
  fg = { css2rgb(fg) }
  bg = { css2rgb(bg) }

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return rgb2css(blendChannel(1), blendChannel(2), blendChannel(3))
end

return M
