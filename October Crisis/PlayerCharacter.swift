//
//  PlayerCharacter.swift
//  October Crisis
//
//  Created by Philippe Kahr on 2015-12-25.
//  Copyright © 2015 Philippe Kahr. All rights reserved.
//

import UIKit


class PlayerCharacter: NSObject {
    
    
    
    // These are all player character base stats.
    
    var playerName : String!
    
    // CHARACTER ATTRIBUTES
    
    var ATTRIBUTE_CHARISMA : Int = 4
    var ATTRIBUTE_HEALTH : Int = 6
    var ATTRIBUTE_STRENGTH : Int = 4
    var ATTRIBUTE_WISDOM : Int = 1
    var ATTRIBUTE_CONSTITUTION : Int = 8
    var ATTRIBUTE_DEXTIRITY : Int = 5
    var ATTRIBUTE_INTELLIGENCE : Int = 3
    
    // *** WEAPON SKILLS ***
    
    var SKILL_PISTOL : Int = 0
    var SKILL_RIFLE : Int = 0
    var SKILL_SHOTGUN : Int = 0
    var SKILL_SWORD : Int = 0
    
    // *** STRENGTH SKILLS ***
    
    var SKILL_HANDCOMBAT : Int = 0
    
    // *** CONSTITUTION SKILLS ***
    // *** DEXTERITY SKILLS ***
    
    var SKILL_STEALTH : Int = 0
    var SKILL_DRIVING : Int = 0
    var SKILL_TAILORING : Int = 0
    
    // *** INTELLIGENCE SKILLS ***
    
    var SKILL_LAW : Int = 0
    var SKILL_BUISINESS : Int = 0
    var SKILL_COMPUTERS : Int = 0
    var SKILL_SCIENCE : Int = 0
    var SKILL_SECURITY : Int = 0
    var SKILL_PSYCOLOGY : Int = 0
    var SKILL_ART : Int = 0
    var SKILL_FIRSTAID : Int = 0
    
    // *** WISDOM SKILLS ***
    
    var SKILL_WRITING : Int = 0
    var SKILL_STREETSENSE : Int = 0
    var SKILL_RELIGION : Int = 0
    var SKILL_TEACHING : Int = 0
    
    // *** CHARISMA SKILLS ***
    
    var SKILL_PERSUASION : Int = 0
    var SKILL_DISGUISE : Int = 0
    var SKILL_SEDUCTION : Int = 0
    var SKILL_MUSIC : Int = 0
    
    /**
    
    This function prints out all player attributes to the console.
    
    @param No parameters needed.
    
    */
    func printOutATTRIBUTES(){
        
        /**
        
        This function prints out all player attributes to the console.
        
        @param No parameters needed.
        
        
        
        This function only serves as a way to log values to the console.
        
        All player skill and attributes are stored in an array. You can then loop in the array and remove all 0 value
        skills. All known skills are skill with a value greater than 0.
        
        Skill are always organised in the same way.
        Strength, Dexterity, Constitution, Intelligence, Wisdom, Charisma and health.
        Unless dead, these should never be 0.
        
        */
        
        
        
        
        let allPlayerSkills : [String : Int] = [
            
            "ATTRIBUTE_STRENGTH" : ATTRIBUTE_STRENGTH,
            "ATTRIBUTE_DEXTIRITY" : ATTRIBUTE_DEXTIRITY,
            "ATTRIBUTE_CONSTITUTION" : ATTRIBUTE_CONSTITUTION,
            "ATTRIBUTE_INTELLIGENCE" : ATTRIBUTE_INTELLIGENCE,
            "ATTRIBUTE_WISDOM" : ATTRIBUTE_WISDOM,
            "ATTRIBUTE_CHARISMA" : ATTRIBUTE_CHARISMA,
            "ATTRIBUTE_HEALTH" : ATTRIBUTE_HEALTH]
        
        //        NSLog("Strength : \(self.ATTRIBUTE_STRENGTH)")
        //        NSLog("Dexterity : \(self.ATTRIBUTE_DEXTIRITY)")
        //        NSLog("Constitution : \(self.ATTRIBUTE_CONSTITUTION)")
        //        NSLog("Intelligence : \(self.ATTRIBUTE_INTELLIGENCE)")
        //        NSLog("Wisdom : \(self.ATTRIBUTE_WISDOM)")
        //        NSLog("Charisma : \(self.ATTRIBUTE_CHARISMA)")
        //        NSLog("Health : \(self.ATTRIBUTE_HEALTH)")
        
        for (attribute, attributeValue) in allPlayerSkills{
            
            if (attributeValue != 0){
                print("\(attribute) : \(attributeValue)")
            }
            
        }
        
        print("")
        
    }
    
    
    
    
}
