users = [
          {username: "mashrur", password: "password1" },
          {username: "jack", password: "password2" },
          {username: "arya", password: "password3" },
          {username: "jonshow", password: "password4" },
          {username: "heisenberg", password: "password5" }
        ]
counter = 0
counter_2 = 0 # setting variables for the loop
trys = 4

=begin  
      I feel like this could've been done with #each but I'm just more comfortable
      with loops right now. I will look into documentation for iterating over hashes
      and maybe rewrite the program or refactor depending on what I find.
=end

puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

while counter < trys
  try_output = (trys - counter) - 1
  counter_2 = 0 # Resets the verification counter so it will go back into loop with new input
  print "Username: "
  user = gets.chomp

  print "Password: "
  pass = gets.chomp
  
  loop do # Verification of user input, breaks once iterated fully through the hash without a hit
    break if counter_2 == users.size
    
    if user == users[counter_2][:username] && pass == users[counter_2][:password]
      p users[counter_2]
      counter = 4
      break
    elsif user != users[counter_2][:username] && pass != users[counter_2][:password]
      counter_2 += 1
    end
  end
  counter += 1
  puts
  puts "Please enter a valid combination, you have #{try_output.to_s} trys left" if counter < trys
  puts "You have run out of trys, contact an admin" if counter == trys
end
