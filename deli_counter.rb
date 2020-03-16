def line(katz_deli)
  if katz_deli != []
    counter = 0
    current_line = "The line is currently: "
    katz_deli.each do |name|
      current_line = current_line + "#{counter + 1}. #{name} "
      counter += 1
    end
    puts current_line.strip
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli) #ticket number fucntion, each time customer enters number goes up
  #for each new customer; add to array and puts "" returns number in line
  ticket_number = katz_deli.length
  if ticket_number > 0
    katz_deli.push(ticket_number)
    puts "Welcome. You are number #{katz_deli.length} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli != []
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
