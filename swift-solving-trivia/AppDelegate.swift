//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(stateAndCapitals:[String : String]) -> String {
        var result: String = ""
        for (state, capital) in stateAndCapitals {
            var isContainChar = false
            let currentState = state.lowercaseString
            let currentCapital = capital.lowercaseString
            for char in currentState.characters {
                if currentCapital.characters.contains(char) {
                    isContainChar = true
                    break
                }
            }
            if !isContainChar {
                result = state
                break
            }
        }
        return result
    }

}

