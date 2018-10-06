//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    var allQuestions = QuestionBank()
    var userAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            userAnswer = true
        }
        else if sender.tag == 2 {
            userAnswer = false
        }
    
        checkAnswer()
        
        questionNumber += 1
        
        nextQuestion()
    
    }
    
    
    func updateUI() {
      
        scoreLabel.text = "Score :\(score)"
        progressBar.frame.size.width = view.frame.size.width / 10 * CGFloat(questionNumber + 1)
        progressLabel.text = "\(questionNumber + 1 ) / 10"
    }
    

    func nextQuestion() {
        
        if questionNumber <= 9 {
        questionLabel.text = allQuestions.questionList[questionNumber].question
            
            updateUI()
        }
        else{
            let alert = UIAlertController(title : "Congratulations", message : "You have completed quiz. Do you want to start over?", preferredStyle : .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.questionList[questionNumber].answer
        
        if correctAnswer == userAnswer {
            ProgressHUD.showSuccess("Correct")
            score += 1
        }
        else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
                nextQuestion()
    }
    

    
}
