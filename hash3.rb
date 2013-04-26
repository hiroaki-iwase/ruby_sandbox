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




def self.set(family, last)
  @name = Hash.new{ |hash,key| hash[key] = {} } if !defined?(@name)
  if @name[hash(family)].include?(family)
    puts "this family name are already used"
    return
  end
  @name[hash(family)][family] = last
  puts "STORED(#{@name})"
end

def self.get(family)
  if @name[hash(family)][family]  
    puts "LAST_NAME is #{@name[hash(family)][family]}"
  else
    puts "NOT STORED"
  end
end








#while(true)
for i in 1..100
  puts "\r\n[1]input\r\n[2]output\r\n[3]finish"
  case gets.chomp!
    when "1"
      print "input family name\r\n>"
      f_name = gets.chomp!
      print "input last name\r\n>"
      l_name = gets.chomp!
      set(f_name, l_name)
      next

    when "2"
      print "input family name\r\n>"
      f_name = gets.chomp!
      get(f_name)
      next

    when "3"
      puts "finish"
      break

    else
      puts "please input number 1 or 2 or 3"
      next
  end
end
