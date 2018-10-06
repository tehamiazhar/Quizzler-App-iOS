//
//  Question.swift
//  Quizzler
//
//  Created by Muhammad Tehami Azhar on 04/10/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let question : String
    let answer : Bool
    init(questionsOfQuiz : String, answerOfQuiz : Bool ) {
        question = questionsOfQuiz
        answer = answerOfQuiz
    }
}
