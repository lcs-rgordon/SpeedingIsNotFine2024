//
//  SpeedingIsNotFineTests.swift
//  SpeedingIsNotFineTests
//
//  Created by Russell Gordon on 2024-09-26.
//

import Testing

struct SpeedingIsNotFineTests {

    @Test func underLimit() {
        
        let result = evaluate(speedLimit: 80, recordedSpeedOfCar: 79)
        
        #expect(result == "Congratulations, you are within the speed limit!")
    }

    @Test func smallFineLowerThreshold() {
        
        let result = evaluate(speedLimit: 80, recordedSpeedOfCar: 81)
        
        #expect(result == "You are speeding and your fine is $100")
    }
    
    @Test func smallFineUpperThreshold() {
        
        let result = evaluate(speedLimit: 80, recordedSpeedOfCar: 100)
        
        #expect(result == "You are speeding and your fine is $100")
    }
    
    @Test func mediumFineLowerThreshold() {
        
        let result = evaluate(speedLimit: 80, recordedSpeedOfCar: 101)
        
        #expect(result == "You are speeding and your fine is $270")
    }
    
    @Test func mediumFineUpperThreshold() {
        
        let result = evaluate(speedLimit: 80, recordedSpeedOfCar: 110)
        
        #expect(result == "You are speeding and your fine is $270")
    }
    
    @Test func largeFine() {
        
        let result = evaluate(speedLimit: 80, recordedSpeedOfCar: 111)
        
        #expect(result == "You are speeding and your fine is $500")
    }
    
}
