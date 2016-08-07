//
//  FlipModel.swift
//  CoinFlip
//
//  Created by Clemens Pfister on 29/07/2016.
//  Copyright © 2016 Clemens Pfister. All rights reserved.
//

import Foundation
import GameKit
import UIKit

struct Coin{

    let heads = "Heads"
    let tails = "Tails"
    
func getFlipResult() -> String{
    let randomNumber = GKRandomSource.sharedRandom().nextInt(withUpperBound: 2)
    switch randomNumber {
    case 0:
        return heads
    case 1:
        return tails
    default:
        return "I don't know what just happened"
    }
    
 }
    
}
