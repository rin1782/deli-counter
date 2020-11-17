def line(array)
    empty_string = "The line is currently: "
    if array.length == 0
        puts "The line is currently empty."
    else 
      array.each do |name|
        if array[array.index(name)] != array[array.length-1] 
            empty_string << "#{array.index(name)+1}. #{name} "
        elsif array[array.index(name)] == array[array.length-1]
            empty_string << "#{array.index(name)+1}. #{name}"
        end
      end  
      puts empty_string 
    end
end

def take_a_number(array, name)
    array << name
    puts "Welcome, #{name}. You are number #{array.length} in line."
end
 
def now_serving(array) 
    if array.length == 0 
        puts "There is nobody waiting to be served!"
else
    puts "Currently serving #{array[0]}."
    array.shift
    end
end