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
    
    @IBOutlet weak var thisTextField:UITextField!
    @IBOutlet weak var thisHereSlider:UISlider!
    @IBOutlet weak var mrStepper:UIStepper!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

