//
//  ViewController.swift
//  ActivitiesList
//
//  Created by Macintosh on 12.05.2019.
//  Copyright © 2019 PavluhaCo. All rights reserved.
//

import UIKit

class ActivitiesListViewController: UITableViewController {
    
    var activities: Activities
    
    required init?(coder aDecoder: NSCoder) {
        
        activities = Activities()
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.activityItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivitiesListItem", for: indexPath)

        let item = activities.activityItems[indexPath.row]
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = activities.activityItems[indexPath.row]
        if let cell = tableView.cellForRow(at: indexPath) {
            configureCheckmark(for: cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureText(for cell: UITableViewCell, with item: ActivitiesListItem) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = item.text
        }
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: ActivitiesListItem) {
        if item.checked {
            cell.accessoryType = .none
        } else {
            cell.accessoryType = .checkmark
        }
        item.toggleChecked()
    }
}

