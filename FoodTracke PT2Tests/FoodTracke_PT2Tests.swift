//
//  FoodTracke_PT2Tests.swift
//  FoodTracke PT2Tests
//
//  Created by Jordy Vazquez on 8/28/19.
//  Copyright © 2019 Jordy Vazquez. All rights reserved.
//

import XCTest
@testable import FoodTracke_PT2

class FoodTracke_PT2Tests: XCTestCase {

    // MARK: Meal Class Tests
    
    // Confirm that thte Meal initializer returns a meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        
        // zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNil(positiveRatingMeal)
    }
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty string
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}

