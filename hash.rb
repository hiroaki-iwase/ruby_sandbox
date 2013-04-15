#person = Array.new
#person[0] = "tanaka"
#person[1] = "satou"
#person[2] = "kimura"
#p person[1]

#person = Hash.new
#person['tanaka'] = "ichirou"
#person['satou'] = "ziro"
#person['kimura'] = "saburou"
#p person['satou']

#h1 = {"a" => "b", "c" => "d"}
#p h1["a"]
#p h1

#h2 = {a: "b", c:"d"}
#p h2

#h1 = Hash.new
#h2 = Hash.new("")
#p h1["not_key"]
#p h2["not_key"]

#h = Hash.new
#h["R"] = "Ruby"
#p h["R"]

#h = Hash.new
#h.store("R", "Ruby")
#p h.fetch("R", "(undef)")
#p h.fetch("L", "(undef)")
#p h.fetch("L"){String.new}

#h = {"a"=>"b", "c"=>"d"}
#p h.keys
#p h.values
#p h.to_a

#h = Hash.new(1)
#h["a"] = 10
#p h["a"]
#p h["b"]
#p h["c"]

=begin
h = Hash.new{|hash, key|
  hash[key] = key.upcase
}

h["a"] = "b"
p h["a"]
#p h["x"]
p h["y"]
p h.fetch("x", "(undef)")
=end

#h = {"a"=>"b", "c"=>"d"}
=begin
p h.key?("a")
p h.has_key?("a")
p h.include?("b")
p h.member?("b")

p h.value?("b")
p h.has_value?("b")


p h.length
p h.size

p h.empty?
h2 = Hash.new
p h2.empty?

p h["a"]
p h["b"]

h.delete("a")
p h.delete("b"){|key| "no #{key}."}

p h["a"]
p h["b"]

h = {"R"=>"Ruby", "P"=>"Perl"}
p h.delete_if{|key, value| key == "P"}
h.clear
p h.size

table = {"A"=>{"a"=>"x", "b"=>"y"},
         "B"=>{"a"=>"v", "b"=>"w"}}

p table["A"]["a"]
p table["B"]["a"]
=end

count = Hash.new(0)

while line =gets
  words = line.split
#p words
  words.each do |word|
    count[word] += 1
p count
  end
end

count.sort{|a, b|
  a[1] <=> b[1]
}.each do |key, value|
  print "#{key}: #{value}\n"
end
