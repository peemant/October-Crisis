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
    var playerCharacter = PlayerCharacter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // When the view load, we create the game world, create a player character and assign the 
        //player character to the game world. We add all game world items at this point.
        // What we actually need is 2 buttons, new game and load game. In these buttons
        // we will create the world or load the world. Right now, we do it here.
        
        var pc = PlayerCharacter()
        var gw = Game()
        playerCharacter = pc
        gw.playerCharacter = pc
        currentGame = gw
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destinationViewController = segue.destinationViewController as! QuestionPresenter
        destinationViewController.currentGame = self.currentGame
        
    }
    
    
}
