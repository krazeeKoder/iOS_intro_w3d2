//
//  MyCustomTableViewController.swift
//  Intro_to_iOS_W3D2
//
//  Created by Anthony Tulai on 2018-04-25.
//  Copyright © 2018 Anthony Tulai. All rights reserved.
//

import UIKit

class MyCustomTableViewController: UITableViewController {

    var myDataSource = [Profile]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let profile1 = Profile(image: #imageLiteral(resourceName: "animal"), name: "Fun Alapca", description: "Very playful")
        
        let profile2 = Profile(image: #imageLiteral(resourceName: "animal"), name: "Lazy Alpaca", description: "sleeps all day")
        
        let profile3 = Profile(image: #imageLiteral(resourceName: "animal"), name: "Mean Alpaca", description: "bullies the other alpacas")
        
        self.myDataSource = [profile1, profile2, profile3]
        
        self.tableView.reloadData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newProfile = Profile(image: #imageLiteral(resourceName: "animal"), name: "Random Name", description: "Random Description")
        self.myDataSource.insert(newProfile, at: indexPath.row)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.myDataSource.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //// Examples of Unwrapping Optionals
//        if let something = optionalSomething {
//            print("something")
//        }
//
//        guard let something = optionalSomething else {
//            return
//        }
//        print(something)
//
//        something = optionalSomething ?? "Use this as a default string"
//        print(something)
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as? MyCustomTableViewCell else {
            return UITableViewCell()
        }
        let profile = self.myDataSource[indexPath.row]
        
        cell.configure(withProfileImage: profile.image, name: profile.name, description: profile.description)

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
