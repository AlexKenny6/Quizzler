//
//  ViewController.swift
//  Quizzler
//
//  Created by Alex Kenny on 18/07/2018.
//  Copyright (c) 2018 Pacwest Software Development LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundColorNumbers = UIColor(red: 54/255.0, green: 81/255.0, blue: 94/255.0, alpha: 1.0)
        view.backgroundColor = backgroundColorNumbers
        
        nextQuestion()
        
    } // func viewDidLoad() end
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    } // func didReceiveMemoryWarning() end
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
                
            pickedAnswer = true
                
        } // if end
        else if sender.tag == 2 {
                
            pickedAnswer = false
                
        } // else if end
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        nextQuestion()
        
    } // func answerPressed() end
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
      
    } // func updateUI() end
    
    func nextQuestion() {
        
        if questionNumber <= 12 {
            
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
            
        } // if end
        else {
            
            let alert = UIAlertController(title: "End of the Quiz", message: "You have finished, Congrats! Would you like to restart?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                
                self.startOver()
                
            }) // let end
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        } // else end
    } // func nextQuestion() end
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            ProgressHUD.showSuccess("Correct!")
            score = score + 1
            
        } // if end
        else {
            
            ProgressHUD.showError("Wrong!")
            
        } // else end
    } // func checkAnswer() end
    
    func startOver() {
        
        questionNumber = 0
        nextQuestion()
        score = 0
       
    } // func startOver() end

} // class ViewController: UIViewController end
