//
//  Question.swift
//  Quizzler
//
//  Created by Alex Kenny on 7/18/18.
//  Copyright © 2018 Pacwest Software Development LLC. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        
        questionText = text
        answer = correctAnswer
        
        
    } // init end
    
} // class Question end
