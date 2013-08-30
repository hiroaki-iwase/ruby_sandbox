# -*- encoding: utf-8 -*-
class List
  class Cell
    attr_accessor :fst, :snd, :link
    def initialize(fst, snd, link = nil)
      @fst = fst
      @snd = snd
      @link = link
    end
  end

  attr_accessor :top, :current_cell
  def initialize()
    @top = Cell.new("end of list", nil, nil)
  end

  def insert(key, value)
    @top = Cell.new(key, value, @top)
  end

  def search(key)
    access_cell = @top
    while access_cell.fst != "end of list"
      return access_cell.snd if access_cell.fst == key
      access_cell = access_cell.link
    end
  end #end of Cell class
end #end of List class

class MyHash
  def initialize
    @name = Array.new(12){ |i| List.new }
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

  def set(key, value)
    return false if @name[hash(key)].search(key)

    @name[hash(key)].insert(key, value)
  end

  def get(key)
    case result = @name[hash(key)].search(key)
      when nil; raise
      else    ; return result
    end
  end
end #end of Hash class
 
name = MyHash.new

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
      begin
        f_name = name.get(gets.chomp!)
        puts "First name is #{f_name}"
      rescue
        puts "[ERROR] This family name is NOT set."
      ensure
        next
      end

    when "3" #FINISH
      puts "finish"
      break

    else
      puts "please input number 1 or 2 or 3"
      next
  end
end
