dir = "^v^v^v^v^v"


def calculate_presents(arr)
  count = []
  location = {x: 0, y: 0}

  north = "^"
  south = "v"
  east = ">"
  west = "<"

  arr = arr.split("")
  arr.each do |i|
    if i == north
      location[:y] += 1
      count.push(location.dup)
    elsif i == south
      location[:y] -= 1
      count.push(location.dup)
    elsif i == east
      location[:x] += 1
      count.push(location.dup)
    else
      location[:x] -= 1
      count.push(location.dup)
    end

  end

  count.uniq.length

end

puts calculate_presents(dir)
