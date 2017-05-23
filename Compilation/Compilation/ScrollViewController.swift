//
//  ScrollViewController.swift
//  Compilation
//
//  Created by Michael Reynolds on 5/23/17.
//  Copyright © 2017 Simplicity, Inc. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController
{
    @IBOutlet weak var scrolllllll:UIScrollView!
    @IBOutlet weak var imageee:UIImageView!
    @IBOutlet weak var changingButton:UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.addSubview(scrolllllll)
        
        imageee.image = UIImage(named: "Cat.png")
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillLayoutSubviews()
    {
        super.viewWillLayoutSubviews()
        scrolllllll.contentSize = CGSize(width: 375, height: 800)
    }
    
    // MARK: - Action Handlers
    
    @IBAction func whenChangingButtonTapped(_ sender:UIButton)
    {
            imageee.image = UIImage(named: "Dogs.png")
            changingButton.setTitle("Dogs", for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
