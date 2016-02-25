//
//  QuestionPresenter.swift
//  October Crisis
//
//  Created by Philippe Kahr on 2015-12-28.
//  Copyright © 2015 Philippe Kahr. All rights reserved.
//
/*

The currentGame is created in the viewController when the game is launched.
The currentGame is then passed to the question presenter.

Game loads the first question using whatQuestion() function in the viewDidLoad.

When the user presses a button to select his answer, the button sends the information
to the question class with a question ID, option chosen and the currentCharacter found in the currentGame
and returns with an updated currentCharacter. At this point, currentQuestionID is incremented by one
and a new set of question is presented to the user.


*/


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
    @IBOutlet weak var confirmationButton: UIButton!
    @IBOutlet weak var nameInputField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        whatQuestion()
        
        
        //        print("CurrentGame player name is : \(currentGame.playerCharacter.playerName)")
        //        currentGame.playerCharacter.printOutATTRIBUTES()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func optionOne(sender: UIButton) {
        
        currentGame.playerCharacter = currentQuestion.answerForQuestion(
            currentQuestionID,
            optionChosen: 1,
            playerCharacter: currentGame.playerCharacter)
        
        currentGame.playerCharacter.printOutATTRIBUTES()
        currentQuestionID += 1
        if (currentQuestionID > 10){
            
            setNameAndGameStart()
        }
        whatQuestion()
        
    }
    
    @IBAction func optionTwo(sender: UIButton) {
        currentGame.playerCharacter = currentQuestion.answerForQuestion(
            currentQuestionID,
            optionChosen: 2,
            playerCharacter: currentGame.playerCharacter)
        
        currentGame.playerCharacter.printOutATTRIBUTES()
        currentQuestionID += 1
        if (currentQuestionID > 10){
            
            setNameAndGameStart()
        }
        whatQuestion()
    }
    
    @IBAction func optionThree(sender: UIButton) {
        currentGame.playerCharacter = currentQuestion.answerForQuestion(
            currentQuestionID,
            optionChosen: 3,
            playerCharacter: currentGame.playerCharacter)
        
        currentGame.playerCharacter.printOutATTRIBUTES()
        currentQuestionID += 1
        if (currentQuestionID > 10){
            
            setNameAndGameStart()
        }
        whatQuestion()
    }
    
    @IBAction func optionFour(sender: UIButton) {
        currentGame.playerCharacter = currentQuestion.answerForQuestion(
            currentQuestionID,
            optionChosen: 4,
            playerCharacter: currentGame.playerCharacter)
        
        currentGame.playerCharacter.printOutATTRIBUTES()
        currentQuestionID += 1
        if (currentQuestionID > 10){
            
            setNameAndGameStart()
        }
        whatQuestion()
    }
    
    @IBAction func optionFive(sender: UIButton) {
        currentGame.playerCharacter = currentQuestion.answerForQuestion(
            currentQuestionID,
            optionChosen: 5,
            playerCharacter: currentGame.playerCharacter)
        
        currentGame.playerCharacter.printOutATTRIBUTES()
        currentQuestionID += 1
        if (currentQuestionID > 10){
            
            setNameAndGameStart()
        }
        whatQuestion()
    }
    
    @IBAction func confirmation(sender: AnyObject) {
        
        currentGame.playerCharacter.playerName = nameInputField.text
        
        
    }
    func whatQuestion(){
        
        switch currentQuestionID{
            
        case 1 :
            currentQuestion.questionOne()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 2:
            currentQuestion.questionTwo()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 3:
            currentQuestion.questionThree()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 4:
            currentQuestion.questionFour()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 5:
            currentQuestion.questionFive()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 6:
            currentQuestion.questionSix()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 7:
            currentQuestion.questionSeven()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 8:
            currentQuestion.questionEight()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 9:
            currentQuestion.questionNine()
            question.text = "\(currentQuestion.question)"
            buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
            buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
            buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
            buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
            buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
            
        case 10:
            currentQuestion.questionTen()
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
    
    func setNameAndGameStart(){
        
        //        This function is called when currentQuestionID is at 11
        //        It's function is to hide all buttons on the screen, add an input field
        //        for players name and an "accept" button to then proceed to main game window.
        
        question.text = "At birth, what did your parents name you?"
        
        buttonOne.enabled = false
        buttonTwo.enabled = false
        buttonThree.enabled = false
        buttonFour.enabled = false
        buttonFive.enabled = false
        buttonOne.alpha = 0
        buttonTwo.alpha = 0
        buttonThree.alpha = 0
        buttonFour.alpha = 0
        buttonFive.alpha = 0
        
        nameInputField.alpha = 1
        nameInputField.enabled = true
        confirmationButton.alpha = 1
        confirmationButton.enabled = true
        confirmationButton.setTitle("Accept", forState: UIControlState.Normal)
        
        
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController as! MainWidowGameView
        destinationViewController.currentGame = self.currentGame
        
    }
    
    func textFieldShouldReturn(_textField: UITextField) -> Bool{
        nameInputField.resignFirstResponder()
        return true
        
    }
    
}
