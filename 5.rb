require_relative "./input5"


str = input.split("\n")
result = []
final_result = []

def check_vowels(arr)
  arr.each do |i|
    vowels = []
    letters = i.split('')
    if letters.include?('a') || letters.include?('e') || letters.include?('i')|| letters.include?('o') || letters.include?('u')
      vowels.push(letters)
      if vowels.length == 3
        final_result.push(letters.join(""))
      end
    end
  end
end

def check_duplicates(arr)
  arr.each do |i|
    letters = i.split('')
    if letters.each_cons(2).any? {|a,b| a == b}
      final_result.push(letters.join(""))
    end
  end
end

def check_no_string(arr)
  arr.each do |i|
    letters = i.split('')
    if !(letters.include?('ab') || letters.include?('cd') || letters.include?('pq') || letters.include?('xy'))
      final_result.push(i)
    end
  end
end


def nice_string_check(arr)
  check_no_string(arr)
  check_vowels(result)
  check_duplicates(result)
end

puts nice_string_check(str)
