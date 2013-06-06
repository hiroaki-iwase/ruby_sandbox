# -*- encoding: utf-8 -*-

class Pair
  attr_accessor :fst, :snd
  def initialize(first, second)
    @fst = first
    @snd = second
  end
end

###change name
class Hash
  def initialize
    @name = Array.new(12){ |i| Array.new }
  end

  def hash(input)
    input = input.to_s if input.class != String
    each_char = input.split('')
    sum = 0
    each_char.each {|c|
      sum += c.ord
    }
    (sum % 12)
  end

#key valueに変更
  def set(key, value)
    @name[hash(key)].each {|value|
      return false if value.fst == key
    }
    @name[hash(key)].push(Pair.new(key, value))
    puts "#{@name}"
    return true
  end

  def get(key)
    @name[hash(key)].each {|value|
      return value.snd if value.fst == key
    }
    return false
  end
end #end of Hash class
 
name = Hash.new


for i in 1..100
  puts "**************************************"
  puts "\r\n[1]input\r\n[2]output\r\n[3]finish"
  case gets.chomp!

    when "1" #SET
      print "input family name\r\n>"
      family_name = gets.chomp!
      print "input first name\r\n>"
      first_name = gets.chomp!
      if name.set(family_name, first_name)
        puts "STORED"
      elsif
        puts "this family name are already used"
      end
      next

    when "2" #GET
      print "input family name\r\n>"
      if f_name = name.get(gets.chomp!)
        puts "First name is #{f_name}"
      elsif
        puts "NOT STORED\r\n"
      end
      next

    when "3" #FINISH
      puts "finish"
      break

    else
      puts "please input number 1 or 2 or 3"
      next
  end
end
