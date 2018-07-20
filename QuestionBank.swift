//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Alex Kenny on 7/18/18.
//  Copyright © 2018 Pacwest Software Development LLC. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Baseball is the best sport in America.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // quiz item inside the append function
        list.append(Question(text: "Baseball is played with a ball and bat.", correctAnswer: true))
        
        list.append(Question(text: "There are nine innings in a game.", correctAnswer: true))
        
        list.append(Question(text: "The total distance from home plate to first is 100 feet.", correctAnswer: false))
        
        list.append(Question(text: "If a coach/player argues the strike zone, they can be ejected.", correctAnswer: true))
        
        list.append(Question(text: "There are 8 positions on the field.", correctAnswer: false))
        
        list.append(Question(text: "It is illegal to throw objects onto the field.", correctAnswer: true))
        
        list.append(Question(text: "There are 32 teams in the MLB.", correctAnswer: false))
        
        list.append(Question(text: "The World Series is out of 7 games.", correctAnswer: true))
        
        list.append(Question(text: "Nolan Ryan set the record for most career strikeouts.", correctAnswer: true))
        
        list.append(Question(text: "The All Star Game is in June.", correctAnswer: false))
        
        list.append(Question(text: "The season ends in August.", correctAnswer: false))
        
        list.append(Question(text: "Ichiro set the single season hits record.", correctAnswer: true))

        
    } // init end
    
} // class QuestionBank end
