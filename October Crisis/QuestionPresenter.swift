//
//  QuestionPresenter.swift
//  October Crisis
//
//  Created by Philippe Kahr on 2015-12-28.
//  Copyright © 2015 Philippe Kahr. All rights reserved.
//


import UIKit

class QuestionPresenter: UIViewController {
    
    var currentGame = Game()
    var currentQuestion = Questions()
    var currentQuestionID : Int = 1
    var playerCharacter = PlayerCharacter()
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        whatQuestion()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func optionOne(sender: UIButton) {
        whatQuestion()
    }
    @IBAction func optionTwo(sender: UIButton) {
        whatQuestion()
    }
    @IBAction func optionThree(sender: UIButton) {
        whatQuestion()
    }
    @IBAction func optionFour(sender: UIButton) {
        whatQuestion()
    }
    @IBAction func optionFive(sender: UIButton) {
        whatQuestion()
    }
    
    func whatQuestion(){
        
        switch currentQuestionID{
            
        case 1 :
            currentQuestion.questionOne()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 2:
            currentQuestion.questionTwo()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 3:
            currentQuestion.questionThree()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 4:
            currentQuestion.questionFour()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 5:
            currentQuestion.questionFive()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 6:
            currentQuestion.questionSix()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 7:
            currentQuestion.questionSeven()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 8:
            currentQuestion.questionEight()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 9:
            currentQuestion.questionNine()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 10:
            currentQuestion.questionTen()
            currentQuestionID += 1
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        default:
            print("This is not a valid currentQuestionID. There is an issue with question ID")
            
        }
        
        
    }
}
