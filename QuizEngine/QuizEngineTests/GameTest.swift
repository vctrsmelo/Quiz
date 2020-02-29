//
//  GameTest.swift
//  QuizEngineTests
//
//  Created by Victor Melo on 10/02/20.
//  Copyright © 2020 Victor Melo. All rights reserved.
//

import Foundation
import XCTest
import QuizEngine
class GameTest: XCTestCase {
    
    func test_startGame_answerOneOutOfTwoCorrectly_Scores1() {
        let router = RouterSpy()
        
        startGame(questions: ["Q1", "Q2"], router: router, correctAnswers: ["Q1": "A1", "Q2": "A2"])
        
        router.answerCallback("A1")
        router.answerCallback("wrong")
        
        XCTAssertEqual(router.routedResult!.score, 1)
    }
    
}
