# -*- encoding: utf-8 -*-
@name = Array.new(12){ |i| Array.new }

def self.hash(input)
  input = input.to_s if input.class != String
  each_char = input.split('')

  sum = 0
  each_char.each {|c|
    sum += c.ord
  }
  (sum % 12)
end


def self.set(family, first)
  if @name[hash(family)].assoc family
    puts "this family name are already used"
    return
  end
  @name[hash(family)].push(["#{family}", "#{first}"]) 
  puts "STORED(#{@name})"
end

def self.get(family)
  @name[hash(family)].each {|value|
    if value[0] == family
      puts "FIRST_NAME is #{value[1]}"
      return
    end
  }
  puts "NOT STORED"
end


for i in 1..100
  puts "\r\n[1]input\r\n[2]output\r\n[3]finish"
  case gets.chomp!
    when "1"
      print "input family name\r\n>"
      family_name = gets.chomp!
      print "input first name\r\n>"
      first_name = gets.chomp!
      set(family_name, first_name)
      next

    when "2"
      print "input family name\r\n>"
      family_name = gets.chomp!
      get(family_name)
      next

    when "3"
      puts "finish"
      break

    else
      puts "please input number 1 or 2 or 3"
      next
  end
end
