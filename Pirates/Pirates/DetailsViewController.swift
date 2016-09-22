//
//  DetailsViewController.swift
//  Pirates
//
//  Created by Tom Bakker on 15-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedPirate: Pirate?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var originLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = selectedPirate?.name
        
        nameLabel.text = selectedPirate?.name
        originLabel.text = selectedPirate?.countryOfOrigin
        descriptionLabel.text = selectedPirate?.comments
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
