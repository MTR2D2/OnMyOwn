//
//  ViewController.swift
//  Compilation
//
//  Created by Michael Reynolds on 5/15/17.
//  Copyright © 2017 Simplicity, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var currentCount = Int(arc4random()%100)
    
    @IBOutlet weak var firstTextField:UITextField!
    @IBOutlet weak var firstSlider:UISlider!
    @IBOutlet weak var firstStepper:UIStepper!

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
    }
    

}

