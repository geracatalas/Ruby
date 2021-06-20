# First Triplet
puts "Please input the first triplet. (E.g. 7 33 58)"

while true
    # Get the first triplet
    a = gets.chomp
    
    # If user enter "exit" close the program
    if a == "exit"
        exit
    end    
    
    # Transform the string in one array
    firstTriplet = a.split(" ").map(&:to_i)
    
    # Checks if the length of the array is different than 3, if it is, it displays an error message and asks the user to re-enter the triplet
    if firstTriplet.length != 3
        puts "\nError, you need to enter 3 values.\nPlease input the first triplet again (E.g. 7 33 58), or type \"exit\" (without quotes) if you want to close the program.\n"
    else
        # Now checks that 1 <= firstTriplet[i] <= 100, if not, it displays an error message and asks the user to re-enter the triplet
        if firstTriplet[0] < 1 || firstTriplet[0] > 100 || firstTriplet[1] < 1 || firstTriplet[1] > 100 || firstTriplet[2] < 1 || firstTriplet[2] > 100
            puts "\nError, the values must be >= 1 and <= 100.\nPlease input the first triplet again (E.g. 7 33 58), or type \"exit\" (without quotes) if you want to close the program.\n"
        else
            system('cls') # Clean the console before requesting the second triplet
            break
        end
    end
end

#Second Triplet
puts "Please input the second triplet. (E.g. 7 33 58)"

while true
    # Get the second triplet
    b = gets.chomp
    
    # If user enter "exit" close the program
    if b == "exit"
        system('cls')
        exit
    end    
    
    # Transform the string in one array
    secondTriplet = b.split(" ").map(&:to_i)
    
    # Checks if the length of the array is different than 3, if it is, it displays an error message and asks the user to re-enter the triplet
    if secondTriplet.length != 3
        system('cls')
        puts "\nError, you need to enter 3 values.\nPlease input the second triplet again (E.g. 7 33 58), or type \"exit\" (without quotes) if you want to close the program.\n"
    else
        # Now checks that 1 <= secondTriplet[i] <= 100, if not, it displays an error message and asks the user to re-enter the triplet
        if secondTriplet[0] < 1 || secondTriplet[0] > 100 || secondTriplet[1] < 1 || secondTriplet[1] > 100 || secondTriplet[2] < 1 || secondTriplet[2] > 100
            system('cls')
            puts "\nError, the values must be >= 1 and <= 100.\nPlease input the second triplet again (E.g. 7 33 58), or type \"exit\" (without quotes) if you want to close the program.\n"
        else
            system('cls') # Clean the console before displaying the results
            break
        end
    end
end

# Score Variables
result = []
firstTripletScore = 0
secondTripletScore = 0

# Compare the two arrays
firstTriplet.each_with_index do | value, index |

    # "value" represents firstTriplet[index]
    if value > secondTriplet[index]
        firstTripletScore += 1
    elsif value < secondTriplet[index]
        secondTripletScore += 1        
    end

end

# Adds the firstTripletScore y secondTripletScore value to array "result"
result << firstTripletScore
result << secondTripletScore


# Shows the results and the triplets entered
puts "First Triplet: #{firstTriplet[0]} #{firstTriplet[1]} #{firstTriplet[2]}"
puts "Second Triplet: #{secondTriplet[0]} #{secondTriplet[1]} #{secondTriplet[2]}"
puts "Results: #{result[0]} #{result[1]}"

# Keeps the program running until the user press any key
puts "\n"
system('pause')