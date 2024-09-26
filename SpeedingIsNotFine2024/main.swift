//
//  main.swift
//  SpeedingIsNotFine2024
//
//  Created by Russell Gordon on 2024-09-26.
//

import Foundation

func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

func evaluate(speedLimit: Int, recordedSpeedOfCar: Int) -> String {
    
    let amountOverLimit = recordedSpeedOfCar - speedLimit
    
    switch amountOverLimit {
    case 1...20:
        return "You are speeding and your fine is $100"
    case 21...30:
        return "You are speeding and your fine is $270"
    case 31...:
        return "You are speeding and your fine is $500"
    default:
        return "Congratulations, you are within the speed limit!"
    }
    
}

// Quick tests
print(evaluate(speedLimit: 80, recordedSpeedOfCar: 79))  // Under
print(evaluate(speedLimit: 80, recordedSpeedOfCar: 81))  // $100 fine, lower threshold
print(evaluate(speedLimit: 80, recordedSpeedOfCar: 100))  // $100 fine, upper threshold
print(evaluate(speedLimit: 80, recordedSpeedOfCar: 101)) // $270 fine, lower threshold
print(evaluate(speedLimit: 80, recordedSpeedOfCar: 110)) // $270 fine, upper threshold
print(evaluate(speedLimit: 80, recordedSpeedOfCar: 111)) // $500 fine, lower threshold
