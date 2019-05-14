//
//  ActivitiesListItem.swift
//  ActivitiesList
//
//  Created by Macintosh on 13.05.2019.
//  Copyright © 2019 PavluhaCo. All rights reserved.
//

import Foundation

class ActivitiesListItem {
    
    var text = ""
    var checked = true
    
    func toggleChecked() {
        checked = !checked
    }
}
