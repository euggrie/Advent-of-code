

packages = "20x3x11
15x27x5
6x29x7
30x15x9
19x29x21
10x4x15
1x26x4
1x5x18
10x15x23
10x14x20
3x5x18
"
packages = packages.split("\n")

def calculate_length_ribbon(l, w, h)
  a = l + l + h + h
  b = w + w + h + h
  c = w + w + l + l
  smallest_perimeter = [a,b,c].min
  bow = h * w * l

  total_ribbon = smallest_perimeter + bow
  return total_ribbon
end

def calculate_packages_ribbon(arr)
  final_ribbon =0
  for i in arr do
    package = i.split("x")
    length = package[0].to_i
    width = package[1].to_i
    height = package[2].to_i

    final_ribbon += calculate_length_ribbon(length, width, height)
  end
  puts final_ribbon
  return final_ribbon
end

calculate_packages_ribbon(packages)
