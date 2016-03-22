dir = "v>v<vvv<<vv^v<v>vv>v<<<^^^^^<<^<vv>^>v^>^"


def calculate_presents(arr)

  santa = []
  bot = []
  arr3 = []
  santa_location = {x: 0, y: 0}
  bot_location = {x: 0, y: 0}



  arr = arr.split("")
  santa =  arr.values_at(* arr.each_index.select {|i| i.even?})
  bot = arr.values_at(* arr.each_index.select {|i| i.odd?})

  def calculate_location(instructions, location)
    count = []
    north = "^"
    south = "v"
    east = ">"
    west = "<"
    instructions.each do |i|
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
    return count
    #print count.uniq.length
  end
  arr1 = calculate_location(santa, santa_location)
  arr2 = calculate_location(bot, bot_location)

  arr1.each do |z| arr2.include?(z)
    puts "hurra"
    arr3.push(z)
  end
end

calculate_presents(dir)
