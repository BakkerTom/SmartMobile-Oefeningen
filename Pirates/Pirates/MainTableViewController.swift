//
//  MainTableViewController.swift
//  Pirates
//
//  Created by Tom Bakker on 15-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    var pirates = [Pirate]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pirates.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = pirates[(indexPath as NSIndexPath).row].name

        return cell
    }

    func loadJsonData(){
        let url = URL(string: "https://i889241.iris.fhict.nl/samples/pirates.json")
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!, completionHandler: {(data, response, error) in
                
                print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
                
                do {
                    if let jsonObject : Any = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments){
                        self.parseJsonData(jsonObject)
                    }
                } catch {print("Error parsing JSON")}
            })            

        
        dataTask.resume()
    }
    
    func parseJsonData(_ jsonObject: Any){
        if let jsonData = jsonObject as? NSArray {
            for item in jsonData {
                let newPirate = Pirate(name: (item as AnyObject).object(forKey: "name") as! String,
                                       life: (item as AnyObject).object(forKey: "life") as! String,
                                       yearsActive: (item as AnyObject).object(forKey: "years_active") as! String,
                                       countryOfOrigin: (item as AnyObject).object(forKey: "country_of_origin") as! String,
                                       comments: (item as AnyObject).object(forKey: "comments") as! String)
                
                pirates.append(newPirate)
            }
        }
        
        DispatchQueue.main.async(execute: {
            self.tableView.reloadData()
        })
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        
        let selectedRow = self.tableView.indexPathForSelectedRow
        let selectedPirate = pirates[(selectedRow! as NSIndexPath).row]
        
        let controller = segue.destination as! DetailsViewController
        controller.selectedPirate = selectedPirate
        
        // Pass the selected object to the new view controller.
    }


}
