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
tdflsbtiiepijanf
dhfespzrhecigzqb
xobfthcuuzhvhzpn
olgjglxaotocvrhw
jhkzpfcskutwlwge
zurkakkkpchzxjhq
hekxiofhalvmmkdl
azvxuwwfmjdpjskj
arsvmfznblsqngvb
ldhkzhejofreaucc
adrphwlkehqkrdmo
wmveqrezfkaivvaw
iyphmphgntinfezg
blomkvgslfnvspem
cgpaqjvzhbumckwo
ydhqjcuotkeyurpx
sbtzboxypnmdaefr
vxrkhvglynljgqrg
ttgrkjjrxnxherxd
hinyfrjdiwytetkw
sufltffwqbugmozk
tohmqlzxxqzinwxr
jbqkhxfokaljgrlg
fvjeprbxyjemyvuq
gmlondgqmlselwah
ubpwixgxdloqnvjp
"

str = input.split("\n")

def nice_string_check(arr)
  result = []
  arr.each do |i|
    if i.match(/[aeiou]/)
      result.push(i)
    end
  end
  puts result.length
end

nice_string_check(str)
puts str.length
