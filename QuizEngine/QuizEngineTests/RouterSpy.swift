//
//  RouterSpy.swift
//  QuizEngine
//
//  Created by Victor Melo on 10/02/20.
//  Copyright © 2020 Victor Melo. All rights reserved.
//

import Foundation
import XCTest
import QuizEngine

class RouterSpy: Router {
    var routedQuestions: [String] = []
    var routedResult: Result<String, String>? = nil
    
    var answerCallback: (String) -> Void = {
        _ in
        
    }
    
    func routeTo(question: String, answerCallback: @escaping (String) -> Void) {
        routedQuestions.append(question)
        self.answerCallback = answerCallback
    }
    
    func routeTo(result: Result<String, String>) {
        routedResult = result
    }
}
