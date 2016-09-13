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
    
    func textAnimation(label: UILabel) {
    let animation = CABasicAnimation(keyPath: "transform.scale")
    animation.toValue = NSNumber(value: 1.1)
    animation.duration = 0.3
//    animation.repeatCount = 4.0
    animation.autoreverses = true
    label.layer.add(animation, forKey: nil)
    }
    
    func reset() {
        view.backgroundColor = colors.launchColor
        flipCoinButton.tintColor = colors.launchColor
        resultLabel.text = "Flip!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reset()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            UIView.animate(withDuration: 0.3, animations: {self.reset()})
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getResultButton() {
        resultLabel.text = coin.getFlipResult()
        
/*  Alternate animation I tinkered with
         UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: .curveLinear, animations: { () -> Void in self.resultLabel.center = CGPoint(x:100, y:70)}, completion: nil) */
        
        //Animation I used
        textAnimation(label: self.resultLabel)
        UIView.animate(withDuration: 0.3, animations: {self.changeColor()})
    }
}

