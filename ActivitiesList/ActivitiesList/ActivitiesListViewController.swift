//
//  ViewController.swift
//  ActivitiesList
//
//  Created by Macintosh on 12.05.2019.
//  Copyright © 2019 PavluhaCo. All rights reserved.
//

import UIKit

class ActivitiesListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivitiesListItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row % 5 == 0 {
                label.text = "Go to gym"
            } else if indexPath.row % 5 == 1 {
                label.text = "Read the book"
            } else if indexPath.row % 5 == 2 {
                label.text = "Go to date"
            } else if indexPath.row % 5 == 3 {
                label.text = "Play Uncharted 2"
            } else if indexPath.row % 5 == 4 {
                label.text = "Study English"
            }
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

