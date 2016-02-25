//
//  Game.swift
//  October Crisis
//
//  Created by Philippe Kahr on 2015-12-25.
//  Copyright © 2015 Philippe Kahr. All rights reserved.
//



import UIKit



class Game: NSObject {
    
    
    
    // The view controller holds a game class. The Game class controls the game loop.
    // A game contains a player character, squad members, location, items, vehicules.
    
    var playerCharacter = PlayerCharacter()         // This is only the player character
    var recrutedPlayerList = [PlayerCharacter] ()   // This is an array that contains all recruted characters not including player character
                                                    // recruted characters are still instances of playerCharacter.
    var squadList = [Squads] ()
    

    func newGame() -> Game{
        
        var newGame = Game()
        var firstSquad = Squads()
        let pc = PlayerCharacter()
        
        firstSquad.renameSquad("Liberal Crime Squad")
        firstSquad.addNewCharacterToSquad(pc)
        firstSquad.squadID = 1
        playerCharacter = pc
        
        
        squadList.append(firstSquad)
        
        return newGame
        
    
        
    }
    
    
    
    
}
