//
//  Result.swift
//  QuizEngine
//
//  Created by Victor Melo on 10/02/20.
//  Copyright © 2020 Victor Melo. All rights reserved.
//

import Foundation

public struct Result<Question: Hashable, Answer> {
    public let answers: [Question: Answer]
    public let score: Int
}
