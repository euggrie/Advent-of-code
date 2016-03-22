input = "toggle 461,550 through 564,900
turn off 149,517 through 716,777
turn on 390,706 through 884,722"

total_lights = input.split("\n")
grid = [[0,0],[999,999]]
grid_final = []
word = []
i = 0
array_lights_on = []

def calculate_final(arr)
  every_light_to_turn_off = []
  every_light_to_turn_on = []
  every_light_to_toggle = []

  def calculate_ligths_off(arr)
    lights_off_arr =[]

    arr.each do |light|
      word = light.split(" ")
      if light.include?('turn off')
        start = word[2]
        finish = word[4]
        every_light_to_turn_off = (start..finish).to_a
      end
    #lights_off_arr = Array.new(every_light_to_turn_off.length, 0)
    end
    return lights_off_arr
  end

  def calculate_ligths_on(arr)
    every_light_to_turn_on = []
    lights_on_arr = []
    arr.each do |light|
      word = light.split(" ")
      if light.include?('turn on')
        start = word[2]
        finish = word[4]
        every_light_to_turn_on = (start..finish).to_a
      end
      #lights_on_arr = Array.new(every_light_to_turn_on.length, 1)
    end
    return lights_on_arr
  end

  def calculate_lights_toggle(arr)
    every_light_to_toggle = []
    lights_toggle_arr = []

    arr.each do |light|
      word = light.split(" ")
      if light.include?('toggle')
        start = word[1]
        finish = word[3]
        every_light_to_toggle = (start..finish).to_a
      end
      #lights_toggle_arr = Array.new(every_light_to_toggle.length, 2)
    end
    return lights_toggle_arr
  end


  puts every_light_to_turn_off
  calculate_ligths_off(arr)
end

calculate_final(total_lights)
