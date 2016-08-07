//
//  ViewController.swift
//  CoinFlip
//
//  Created by Clemens Pfister on 29/07/2016.
//  Copyright © 2016 Clemens Pfister. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var flipCoinButton: UIButton!

    let coin = Coin()
    let colors = Colors()
   
    func changeColor(){
        if resultLabel.text == "Heads" {
            view.backgroundColor = colors.headColor
            flipCoinButton.tintColor = colors.headColor
            
        } else if resultLabel.text == "Tails" {
            view.backgroundColor = colors.tailsColor
            flipCoinButton.tintColor = colors.tailsColor
       }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = colors.launchColor
        flipCoinButton.tintColor = colors.launchColor
        resultLabel.text = "Flip!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getResultButton() {
        resultLabel.text = coin.getFlipResult()
        changeColor()
    }
}

