//
//  MainWidowGameView.swift
//  October Crisis
//
//  Created by Philippe Kahr on 2015-12-27.
//  Copyright © 2015 Philippe Kahr. All rights reserved.
//


import UIKit

class MainWidowGameView: UIViewController {
    
    var currentGame = Game()
    var currentQuestion = Questions()
    var currentQuestionID : Int = 0
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentQuestion.questionOne()
        question.text = "\(currentQuestion.question)"
        buttonOne.setTitle(currentQuestion.optionOne, forState: UIControlState.Normal)
        buttonTwo.setTitle(currentQuestion.optionTwo, forState: UIControlState.Normal)
        buttonThree.setTitle(currentQuestion.optionThree, forState: UIControlState.Normal)
        buttonFour.setTitle(currentQuestion.optionFour, forState: UIControlState.Normal)
        buttonFive.setTitle(currentQuestion.optionFive, forState: UIControlState.Normal)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func optionOne(sender: UIButton) {
        
        currentGame.playerCharacter.ATTRIBUTE_DEXTIRITY += 2
        
    }
    @IBAction func optionTwo(sender: UIButton) {
        
        currentGame.playerCharacter.ATTRIBUTE_STRENGTH += 2
        
    }
    @IBAction func optionThree(sender: UIButton) {
        
        currentGame.playerCharacter.ATTRIBUTE_INTELLIGENCE += 2
        
    }
    @IBAction func optionFour(sender: UIButton) {
        
        currentGame.playerCharacter.ATTRIBUTE_CONSTITUTION += 3
        
    }
    @IBAction func optionFive(sender: UIButton) {
        
        currentGame.playerCharacter.ATTRIBUTE_CHARISMA += 2
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationViewController = segue.destinationViewController as! QuestionTwo
        destinationViewController.currentGame = currentGame
        
    }
    
    
    
    
}
