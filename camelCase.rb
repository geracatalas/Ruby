while true
    #Request the CamelCase string
    puts "Insert your CamelCase word: "

    # Gets the CamelCase word
    camelCase = gets.chomp    
    
    # Checks that 1 <= camelCase word length <= 10^5 (info: 10 ^ 5 === 100000), if not, it displays an error message and asks the user to re-enter the triplet
    if camelCase.length < 1 || camelCase.length > 100000
        system('cls')
        puts "\nError, the camelCase word length must be >= 1 and <= 10^5.\nPlease input your CamelCase word again, or press CRTL + C if you want to close the program.\n"
    else
        # Add a space in front of the capital letters
        subCamelCase = camelCase.gsub(/([A-Z])/, ' \1')
    
        # Convert the string to an array of string
        splitCamelCase = subCamelCase.split(" ")
    
        # Get the length of the array
        s = splitCamelCase.length
    
        # Print the result
        puts s
    
        # Keeps the program running until the user press any key
        # puts "\n"
        system('pause')
    
        break
    end
end