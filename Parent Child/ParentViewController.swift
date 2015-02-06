//
//  ViewController.swift
//  Parent Child
//
//  Created by Francisco Hui on 2/6/15.
//  Copyright (c) 2015 Francisco Hui. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // override default segue behavior
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        // how to pass info from one screen to another
        // WHEN a segue is triggered (ie. a transitioning is happening)
        // FIND the destination's ViewController
        // CHANGE the destination's object's properties
        
        // WHEN the segue "showingChildView" is triggered
        if segue.identifier == "showingChildView"{
            
            // FIND the destination's View Controller
            let detailController = segue.destinationViewController as ChildViewController

            // CHANGE the text labels by locating their IBObject identifier inside the destination ViewController
            detailController.childLabelText = "Who's there?"
            detailController.childLabelTextDescription = "said the wolf"

        }
        else {
//        if segue.identifier == "showingChildViewAgain"{
            let detailController = segue.destinationViewController as ChildViewController
            
            detailController.childLabelText = "WHO'S THERE?!!"
            detailController.childLabelTextDescription = "roared the wolf"
        }
    }
}

