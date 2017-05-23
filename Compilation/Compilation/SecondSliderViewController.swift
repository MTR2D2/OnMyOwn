//
//  SecondSliderViewController.swift
//  Compilation
//
//  Created by Michael Reynolds on 5/22/17.
//  Copyright © 2017 Simplicity, Inc. All rights reserved.
//

import UIKit

class SecondSliderViewController:UIViewController
{
    var currentCount = Int(arc4random()%100)
    
    @IBOutlet weak var textField:UITextField!
    @IBOutlet weak var sliderR:UISlider!
    @IBOutlet weak var stepperR:UIStepper!
    @IBOutlet weak var mrLabel:UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateViewsWithCurrentCount()
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateViewsWithCurrentCount()
    {
        textField.text = "\(currentCount)"
        sliderR.value = Float(currentCount)
        stepperR.value = Double(currentCount)
    }
    
    // MARK: - Gesture Recognizers
    
    @IBAction func viewTapped(_ sender:UITapGestureRecognizer)
    {
        if textField.isFirstResponder
        {
            textField.resignFirstResponder()
            
            updateViewsWithCurrentCount()
        }
    }
    
    // MARK: - Action Handlers
    
    @IBAction func sliderMoved(_ sender:UISlider)
    {
        currentCount = Int(sender.value)
        updateViewsWithCurrentCount()
        if Int(sender.value) >= 50
        {
            mrLabel.text = "panties"
        }
        else if Int(sender.value) <= 50
        {
            mrLabel.text = "Number"
        }
    }
    @IBAction func stepperMoved(_ sender:UIStepper)
    {
        currentCount = Int(sender.value)
        updateViewsWithCurrentCount()
        if Int(sender.value) >= 50
        {
            mrLabel.text = "panties"
        }
        else if Int(sender.value) <= 50
        {
            mrLabel.text = "Number"
        }
    }
    
}
