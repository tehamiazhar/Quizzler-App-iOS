//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Muhammad Tehami Azhar on 04/10/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    var questionList = [Question]()
    
    init() {
        
        questionList.append(Question(questionsOfQuiz: "Quaid-e-Azam is the founder of Pakistan", answerOfQuiz: true))
        questionList.append(Question(questionsOfQuiz: "A slug\'s blood is green.", answerOfQuiz: true))
        questionList.append(Question(questionsOfQuiz: "It is illegal to pee in the Ocean in Portugal.", answerOfQuiz: true))
        questionList.append(Question(questionsOfQuiz: "It is illegal to pee in the Ocean in Portugal.", answerOfQuiz: true))
        questionList.append(Question(questionsOfQuiz: "You can lead a cow down stairs but not up stairs.", answerOfQuiz: false))
        questionList.append(Question(questionsOfQuiz: "Google was originally called \"Backrub\".", answerOfQuiz: true))
        questionList.append(Question(questionsOfQuiz: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answerOfQuiz: false))
        questionList.append(Question(questionsOfQuiz: "No piece of square dry paper can be folded in half more than 7 times.", answerOfQuiz: false))
        questionList.append(Question(questionsOfQuiz: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", answerOfQuiz: true))
        questionList.append(Question(questionsOfQuiz: "Approximately one quarter of human bones are in the feet.", answerOfQuiz: true))
        
    }
}
