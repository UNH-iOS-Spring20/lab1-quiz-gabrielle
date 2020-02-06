//
//  ViewController.swift
//  Lab 1: Quiz
//  GGood

import UIKit
import os

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "Who won the first Super Bowl in 1967?",
        "What is the square root of 2,401?",
        "Who was the first person to walk on the moon?"
    ]
    
    let answers: [String] = [
        "Green Bay Packers",
        "49",
        "Neil Armstrong"
    ]
     
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        os_log("Showing next question")
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        os_log("Showing answer")
        let answer: String =
            answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded")
        questionLabel.text = questions[currentQuestionIndex]
    }


}

