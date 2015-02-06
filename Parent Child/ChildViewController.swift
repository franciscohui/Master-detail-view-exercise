//
//  ChildViewController.swift
//  Parent Child
//
//  Created by Francisco Hui on 2/6/15.
//  Copyright (c) 2015 Francisco Hui. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    @IBOutlet weak var parentButtonPressed: UILabel!
    @IBOutlet weak var parentButtonPressedDescription: UILabel!

    // create variables for each label
    // this allows another ViewController to update the value inside the variable
    var childLabelText: String = ""
    var childLabelTextDescription = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // assign variables to each IBOutlet text label
        parentButtonPressed.text = childLabelText
        parentButtonPressedDescription.text = childLabelTextDescription

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
