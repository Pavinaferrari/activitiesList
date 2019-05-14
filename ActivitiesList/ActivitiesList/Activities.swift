//
//  Activities.swift
//  ActivitiesList
//
//  Created by Macintosh on 13.05.2019.
//  Copyright © 2019 PavluhaCo. All rights reserved.
//

import Foundation

class Activities {
    
    var activityItems: [ActivitiesListItem] = []
    
    init() {
        let row0Item = ActivitiesListItem()
        row0Item.text = "Go to gym"
        let row1Item = ActivitiesListItem()
        row1Item.text = "Read the book"
        let row2Item = ActivitiesListItem()
        row2Item.text = "Go to date"
        let row3Item = ActivitiesListItem()
        row3Item.text = "Play Uncharted 2"
        let row4Item = ActivitiesListItem()
        row4Item.text = "Study English"
    
        activityItems.append(row0Item)
        activityItems.append(row1Item)
        activityItems.append(row2Item)
        activityItems.append(row3Item)
        activityItems.append(row4Item)
    }
    
    private func randomTitle() -> String {
        var titles = ["Watch Rallycross", "Clean the house", "Drink a coffe", "Eat a stake", "Mind a Jellybaby"]
        let randomNumber = Int.random(in: 0...titles.count - 1)
        return titles[randomNumber]
    }
    
    func newActivity() -> ActivitiesListItem {
        let item = ActivitiesListItem()
        item.text = randomTitle()
        item.checked = true
        activityItems.append(item)
        return item
    }
}
