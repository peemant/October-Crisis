//
//  Squads.swift
//  October Crisis
//
//  Created by Philippe Kahr on 2016-01-04.
//  Copyright © 2016 Philippe Kahr. All rights reserved.
//

import UIKit

/*

This class is used to do squad based management such as creating a squad or modifing it.

Each squads() instance is a different squad containing 6 characters.
Each squad has to be created with a name and I should give it an ID number
for easy referal. 

In game we should create an empty squad initially. When we press 'create new squad' we should get a
window to force a player to put in a squad name, then click accept. At the accept, an ID is given to
the squad. The squad is then placed in an array in the game world that contains all the squads.


When the game loads, I need

*/

class Squads: NSObject {
    
    var squadName : String = "New squad"
    var squadID : Int = 0
    
    // A squad can have up to a MAXIMUM of 6 people
    
    private var squadMemberOne = PlayerCharacter()
    private var squadMemberTwo = PlayerCharacter()
    private var squadMemberThree = PlayerCharacter()
    private var squadMemberFour = PlayerCharacter()
    private var squadMemberFive = PlayerCharacter()
    private var squadMemberSix = PlayerCharacter()
    
    var squadList = [PlayerCharacter]()
    
    
    
    /**
    
    This is the discription text
    
    - parameter anInt: this is an int parameter
    - returns: squads()
    
    */
    func createNewSquad() -> Squads{
        

        
        let newSquad = Squads()
        return newSquad
        
    }
    
    /**
    
    This is the removeSquad
    
    - parameter notthisshit: this is an int parameter
    
    */
    
    func removeSquad(){
        
    }
    
    func reorderSquad(){
        
    }
    
    func addNewCharacterToSquad(playerToAdd: PlayerCharacter){
        
        squadList.append(playerToAdd)
        
    }
    
    func returnSquadMembers(){
        
    }
    
    func renameSquad(newSquadName: String){
        
        squadName = newSquadName
        
    }
    
    
    
}
