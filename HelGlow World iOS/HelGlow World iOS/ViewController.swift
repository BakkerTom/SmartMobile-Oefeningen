//
//  ViewController.swift
//  HelGlow World iOS
//
//  Created by Tom Bakker on 01-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage(sender: AnyObject) {
        //Display a message
        let alertController = UIAlertController(title: "Glow", message: "HelGlow World!", preferredStyle: UIAlertControllerStyle.Alert)
        
        //Add an Ok Button to the alert
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        //Present the alert
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }

}

