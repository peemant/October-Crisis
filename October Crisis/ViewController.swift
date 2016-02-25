//
//  ViewController.swift
//  October Crisis
//
//  Created by Philippe Kahr on 2015-12-25.
//  Copyright © 2015 Philippe Kahr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentGame = Game()
    var currentQuestion = Questions()
    var currentQuestionID : Int = 0
    var playerCharacter = PlayerCharacter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    @IBAction func newGame(sender: AnyObject) {
        
        // Created 2 variables, 1 game world and 1 player character.
        // At this point, I should create a new game calling newGame method in Game()
        // The newGame should return :
        //  1x playerCharacter
        //  1x squad with playerCharacter included
        //  all included in a Game() object.
        
        currentGame = currentGame.newGame()
        

        
    }
    
    @IBAction func loadGame(sender: AnyObject) {
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController as! QuestionPresenter
        destinationViewController.currentGame = self.currentGame
        
    }
    
    
}

