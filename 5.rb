input = "zgsnvdmlfuplrubt
vlhagaovgqjmgvwq
ffumlmqwfcsyqpss
zztdcqzqddaazdjp
eavfzjajkjesnlsb
urrvucyrzzzooxhx
twdjikcgtpvlctte
minfkyocskvgubvm
sfxhhdhaopajbzof
sofkjdtalvhgwpql
uqfpeauqzumccnrc

"

str = input.split("\n")

def nice_string_check(arr)
  result = []
  arr.each do |i|
    letters = i.split('')

    if (i.match(/[aeiou]/))
      result.push(i)
    end

    if letters.each_cons(2).any? {|a,b| a == b}
      result.push(letters.join(""))
    end
  end
  result
end

print nice_string_check(str)
