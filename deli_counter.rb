#Stores people in line
katz_deli = []
  $line_count = 0
  
  def line(katz_deli)
    
    #Assigns each person a number based on their place in line
    katz_line = katz_deli.map.with_index { |name, i| "#{i + 1}. #{name}" }
    
    if katz_deli.any? == false
      puts "The line is currently empty."
    end
    
    if katz_deli.any? == true
      #Adds the line with assigned numbers to a string
      puts "The line is currently: " + katz_line.join(" ")
    end
    
  end
  
  def take_a_number(katz_deli, name)
    
      #States the number of the newest person based on their place in line
      puts ("Welcome, #{name}. You are number #{katz_deli.count + 1} in line.")
      
      #Adds the new person to the line
      katz_deli.push("#{name}")
      
  end
  
  def take_a_number(katz_deli)
    $line_count = $line_count + 1
    puts ("Welcome, you have ticket number #{$line_count}")
    katz_deli.push("#{$line_count}")
  end
  
  
  def now_serving(katz_deli)
    
    #If there's anybody in line, it says so and removes the person from the queue
    if katz_deli.any? == true
      puts "Currently serving #{katz_deli[0]}."
      katz_deli.shift
    end
    
    if katz_deli.any? == false
      puts "There is nobody waiting to be served!"
    end
    
  end

line(katz_deli)
take_a_number(katz_deli, "Ada")
line(katz_deli)
now_serving(katz_deli)
line(katz_deli)