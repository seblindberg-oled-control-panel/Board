#!/usr/bin/ruby

PART_NUMBERS = (2..33)
ORIGIN = [85, 15]
RADIUS = 11

parts = PART_NUMBERS.count
angle_delta = 2 * Math::PI / parts
angle_offset = Math::PI / 2

commands = PART_NUMBERS.map.with_index do |part_number, index|

  quadrant = (index / 8)
  
  if (quadrant % 2) != 0
    # Flip index for quadrants 2 and 4
    index = (quadrant + 1) * 8 - (index % 8) - 1
  end
 

  angle = angle_offset - index * angle_delta
  
  x = ORIGIN[0] + RADIUS * Math.cos(angle)
  y = ORIGIN[1] + RADIUS * Math.sin(angle)
  
  angle_degrees = (angle * 180 / Math::PI + 180) % 360
  
  [
    "move D#{part_number} (%.2f %.2f)" % [x, y],
    "rotate =R%.0f 'D#{part_number}'" % angle_degrees
  ]
end

puts commands.flatten.join('; ')