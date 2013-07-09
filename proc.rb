hello = proc{
  puts "Hello, world!"
}
hello.call

def hello2
  puts "Hello, world!"
end
hello2

#************************************
sum = proc {|x,y|
  x + y
}
puts sum.call(2,3)

def sum2(x,y)
  x+y
end
puts sum2(2,3)

#************************************

$roma = proc{|action|
  case action
    when "recover"
      p "recover called"     
    when "auto_recover"
      p "auto_recover called"     
    when "proc_failed"
      p "proc_failed called"     
    else
  end
}

$roma.callback("recover")

