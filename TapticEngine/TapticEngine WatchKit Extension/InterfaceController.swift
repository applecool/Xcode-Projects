//
//  InterfaceController.swift
//  TapticEngine WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var lblLabelNumber: WKInterfaceLabel!
    
    @IBOutlet var btnAnswer0: WKInterfaceButton!
    @IBOutlet var btnAnswer1: WKInterfaceButton!
    @IBOutlet var btnAnswer2: WKInterfaceButton!
    
    var randomNumber : Int = 0
    var buttonCorrect : Int = 0
    
    var incorrectAnswer0 : Int = 0
    var incorrectAnswer1 : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func btnAnswer0Action() {
        if buttonCorrect == 0 {
            button0Correct()
        }
    }
    
    @IBAction func btnAnswer1Action() {
        if buttonCorrect == 1 {
            button1Correct()
        }
    }
    
    @IBAction func btnAnswer2Action() {
        if buttonCorrect == 2 {
            button2Correct()
        }
    }
    
    func randomizeNumber(){
        randomNumber = Int(arc4random_uniform(5))
        buttonCorrect = Int(arc4random_uniform(5))
        
        incorrectAnswer0 = Int(arc4random_uniform(5))
        incorrectAnswer1 = Int(arc4random_uniform(5))
        
        incorrectAnswerCheck()
    }
    
    func incorrectAnswerCheck(){
        
        if randomNumber == incorrectAnswer0 || randomNumber == incorrectAnswer1 || incorrectAnswer0 == incorrectAnswer1 {
            
            incorrectAnswer0 = Int(arc4random_uniform(5))
            incorrectAnswer1 = Int(arc4random_uniform(5))
            
            if randomNumber == incorrectAnswer0 || randomNumber == incorrectAnswer1 || incorrectAnswer0 == incorrectAnswer1 {
                
                incorrectAnswer0 = 5
                incorrectAnswer1 = 6
            }

        }
        
        printAnswer()
        printButtons()
        
    }
    
    func printAnswer(){
        lblLabelNumber.setText("\(randomNumber)")
    }
    
    func printButtons(){
        
        if buttonCorrect == 0{
            btnAnswer0.setTitle("\(randomNumber)")
            btnAnswer1.setTitle("\(incorrectAnswer0)")
            btnAnswer2.setTitle("\(incorrectAnswer1)")
        }
        
        
        if buttonCorrect == 1{
            btnAnswer1.setTitle("\(randomNumber)")
            btnAnswer0.setTitle("\(incorrectAnswer0)")
            btnAnswer2.setTitle("\(incorrectAnswer1)")
        }
        
        
        if buttonCorrect == 2{
            btnAnswer2.setTitle("\(randomNumber)")
            btnAnswer1.setTitle("\(incorrectAnswer0)")
            btnAnswer0.setTitle("\(incorrectAnswer1)")
        }


    }
    
    func button0Correct(){
        triggerTaptic()
    }
    
    func button1Correct(){
        triggerTaptic()
    }
    
    func button2Correct(){
        triggerTaptic()
    }
    
    func triggerTaptic(){
        
    }
    
    
}
