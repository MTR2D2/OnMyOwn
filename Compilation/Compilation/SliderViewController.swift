//
//  ViewController.swift
//  Compilation
//
//  Created by Michael Reynolds on 5/15/17.
//  Copyright © 2017 Simplicity, Inc. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController
{
    var currentCount:Int = Int(arc4random()%100)
    @IBOutlet weak var firstTextField:UITextField!
    @IBOutlet weak var firstSlider:UISlider!
    @IBOutlet weak var firstStepper:UIStepper!
    @IBOutlet weak var secondSlider:UISlider!
    @IBOutlet weak var moveForward:UIBarButtonItem!
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
        firstTextField.text = "\(currentCount)"
        firstSlider.value = Float(currentCount)
        firstStepper.value = Double(currentCount)
        secondSlider.value = Float(currentCount)
    }
    // MARK: - Gesture Recognizers
    @IBAction func viewTapped(_ sender:UITapGestureRecognizer)
    {
        if firstTextField.isFirstResponder
            {
                firstTextField.resignFirstResponder()
        updateViewsWithCurrentCount()
        }
    }
    // MARK: - Action Handlers
    @IBAction func sliderChanged(_ sender:UISlider)
    {
        currentCount = Int(sender.value)
        updateViewsWithCurrentCount()
    }
    @IBAction func stepperChanged(_ sender:UIStepper)
    {
        currentCount = Int(sender.value)
        updateViewsWithCurrentCount()
    }
    @IBAction func secondSliderChanged(_ sender:UISlider)
    {
        currentCount = Int(sender.value)
        updateViewsWithCurrentCount()
    }
}

