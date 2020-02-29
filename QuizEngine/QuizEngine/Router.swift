//
//  Router.swift
//  QuizEngine
//
//  Created by Victor Melo on 10/02/20.
//  Copyright © 2020 Victor Melo. All rights reserved.
//

import Foundation

public protocol Router {
    associatedtype Question: Hashable
    associatedtype Answer
    
    func routeTo(question: Question, answerCallback: @escaping (Answer) -> Void)
    func routeTo(result: Result<Question, Answer>)
}
