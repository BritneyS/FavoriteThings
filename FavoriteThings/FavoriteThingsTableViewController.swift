//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Britney Smith on 8/27/18.
//  Copyright © 2018 Britney Smith. All rights reserved.
//
/*
 Favorite Things
 
 Create an app that displays your favorite things in a
 table view
 
 • Implement swipe-to-delete functionality in your
 table view
 
 • You can choose to display your favorite songs,
 animals, random things, or anything else you want
 — the goal here is to practice creating a Table View
 Controller, populate your table view from a data
 source, and manage your table view’s behavior
 using delegate methods
 */
import UIKit

class FavoriteThingsTableViewController: UITableViewController {

    var favoriteThings = ["Back to the Future II", "Shawn of the Dead", "Memento", "American Psycho", "The Shining"]
    
    var numOfMovies = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfMovies
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListItem", for: indexPath)
        
        cell.textLabel?.text = favoriteThings[indexPath.row]
        
        return cell
    }
    //swipe to delete functionality
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.favoriteThings.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        numOfMovies-=1
    }
    
    

}

