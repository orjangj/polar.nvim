local M = {}

local function from_css(rgb)
  local r = tonumber(string.sub(rgb, 2, 2) .. string.sub(rgb, 3, 3), 16)
  local g = tonumber(string.sub(rgb, 4, 4) .. string.sub(rgb, 5, 5), 16)
  local b = tonumber(string.sub(rgb, 6, 6) .. string.sub(rgb, 7, 7), 16)
  return r, g, b
end

local function to_css(r, g, b)
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

  return h * 60, s * 100, l * 100
end


local function hsl2rgb(h, s, l)
  l = l /100;
  local a = s * math.min(l, 1 - l) / 100;

  local function f(n)
    local k = (n + h / 30) % 12;
    local color = l - a * math.max(math.min(k - 3, 9 - k, 1), -1);
    return math.floor(255 * color)
  end

  return f(0), f(8), f(4)
end


-- Increases the lightness of the color by a percentage
-- color: css color
-- percentage: 0 - 100%
function M.lighten(rgb, percentage)
  local h, s, l = rgb2hsl(from_css(rgb))
  return to_css(hsl2rgb(h, s, l + percentage))
end

-- Decreases the lightness of the color by a percentage
-- color: css color
-- percentage: 0 - 100%
function M.darken(rgb, percentage)
  local h, s, l = rgb2hsl(from_css(rgb))
  return to_css(hsl2rgb(h, s, l - percentage))
end

return M
