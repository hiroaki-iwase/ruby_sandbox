# -*- encoding: utf-8 -*-

def self.hash(input)
  input = input.to_s if input.class != String
  each_char = input.split('')

  sum = 0
  each_char.each {|c|
    sum += c.ord
  }
  (sum % 12)
end

[1234,1234.5,"春夏秋冬","○×","ｱｲｳｴｵ",].each {|var|
  puts "「#{var}」(#{var.class}) to #{hash(var)}"
}









  #input = input.to_s if !input.kind_of?(String)


=begin
#each_char = ARGV[0].split('') # ARGV
#input = gets.chomp! # command line
input_int = 1234 # int
input_float = 1234.5 # float
input_string = "春夏秋冬" #string
input_symbole = "○×" #string
input_hankaku = "ｱｲｳｴｵ" #string
input_space = " "
input_zenkaku_space = "　"
=begin
puts "int(#{input_int}) to #{hash(input_int)}"
puts "float(1234.5) to #{hash(input_float)}"
puts "string(春夏秋冬) to #{hash(input_string)}"
puts "symbole to #{hash(input_symbole)}"
puts "hankaku(kana) to #{hash(input_hankaku)}"
puts "hankaku(space) to #{hash(input_space)}"
puts "zenkaku(space) to #{hash(input_zenkaku_space)}"
=end











=begin
  while i < count
    num = each_char[i].ord
    sum += num
    i += 1
  end
=end

=begin
#hash = sum.to_s.split('')
#digit = hash.length
#puts hash[digit - 1]

base_ary = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B']
result = []

while sum != 0
  result << base_ary[sum % 12]
  sum /= 12
end

hash = result[0]

if hash == "A"
  puts "10"
elsif hash == "B"
  puts "11"
else
  puts hash
end
=end
