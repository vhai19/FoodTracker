//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Nguyen Van Hai on 2018/02/12.
//  Copyright © 2018 Carmate. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero Rating", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let highestPositiveRating = Meal.init(name: "Highest Positive Rating", photo: nil, rating: 5)
        XCTAssertNotNil(highestPositiveRating)
    }
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRating = Meal.init(name: "Negative Rating", photo: nil, rating: -1)
        XCTAssertNil(negativeRating)
        
        // Empty name
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRating = Meal.init(name: "Maximum Rating", photo: nil, rating: 6)
        XCTAssertNil(largeRating)
    }
    
    
    // Meal Test Class
}
