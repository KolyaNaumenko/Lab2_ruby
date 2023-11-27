vertices = [
  [28, 298], [24, 271], [31, 229], [33, 204], [39, 179],
  [33, 148], [28, 123], [28, 101], [37, 78], [49, 56],
  [77, 44], [134, 38], [171, 33], [208, 28], [238, 24],
  [306, 20], [355, 20], [413, 20], [471, 24], [487, 48],
  [510, 95], [516, 134], [515, 190], [509, 211], [483, 233],
  [409, 213], [345, 187], [326, 161], [263, 152], [251, 195],
  [222, 209], [195, 206], [160, 202], [147, 206], [129, 223],
  [119, 248], [99, 283], [79, 298], [61, 300]
]


def calculate_area(vertices)
  n = vertices.length
  area = 0.0

  for i in 0...n
    x1, y1 = vertices[i]
    x2, y2 = vertices[(i + 1) % n]
    area += (x1 * y2 - x2 * y1)
  end

  area = (area.abs) / 2.0
end


polygon_area = calculate_area(vertices)
