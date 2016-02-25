//
//  DataManagement.swift
//  October Crisis
//
//  Created by Philippe Kahr on 2016-01-04.
//  Copyright © 2016 Philippe Kahr. All rights reserved.
//

import UIKit

class DataManagement: NSObject {
    
    func loadGameData() {
        var fileBundleURL = NSBundle.mainBundle().URLForResource("SaveFile", withExtension: "plist")
        var gameData : NSDictionary?
        gameData = NSDictionary(contentsOfURL: fileBundleURL!)
        
    }
    
    func saveGameData(gameDataToBeSaved: Game) {
        
    }

}
