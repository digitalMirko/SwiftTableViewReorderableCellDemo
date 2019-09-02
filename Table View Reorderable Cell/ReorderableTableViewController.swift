//
//  ReorderableTableViewController.swift
//  Table View Reorderable Cell
//
//  Created by Mirko Cukich on 8/29/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
//  Swift TableView Reorderable Cell Demo - Demo 13 of 30


import UIKit

struct HeadLine {
    
    var id: Int
    var title : String
    var text : String
    var image : String
}

class ReorderableTableViewController: UITableViewController {
    
    var headlines = [
        HeadLine(id: 1, title: "Red", text: "RGB: 230, 25, 75", image: "01Red"),
        HeadLine(id: 2, title: "Green", text: "RGB: 60, 180, 75", image: "02Green"),
        HeadLine(id: 3, title: "Yellow", text: "RGB: 255, 225, 25", image: "03Yellow"),
        HeadLine(id: 4, title: "Blue", text: "RGB: 0, 130, 200", image: "04Blue"),
        HeadLine(id: 5, title: "Orange", text: "RGB: 245, 130, 48", image: "05Orange"),
        HeadLine(id: 6, title: "Purple", text: "RGB: 145, 30, 180", image: "06Purple"),
        HeadLine(id: 7, title: "Cyan", text: "RGB: 70, 240, 240", image: "07Cyan"),
        HeadLine(id: 8, title: "Magenta", text: "RGB: 240, 50, 230", image: "08Magenta"),
        HeadLine(id: 9, title: "Lime", text: "RGB: 210, 245, 60", image: "09Lime"),
        HeadLine(id: 10, title: "Pink", text: "RGB: 250, 190, 190", image: "10Pink"),
        HeadLine(id: 11, title: "Teal", text: "RGB: 0, 128, 128", image: "11Teal"),
        HeadLine(id: 12, title: "Lavender", text: "RGB: 230, 190, 255", image: "12Lavender"),
        HeadLine(id: 13, title: "Brown", text: "RGB: 170, 110, 40", image: "13Brown"),
        HeadLine(id: 14, title: "Beige", text: "RGB: 255, 250, 220", image: "14Beige"),
        HeadLine(id: 15, title: "Maroon", text: "RGB: 128, 0, 0", image: "15Maroon"),
        HeadLine(id: 16, title: "Mint", text: "RGB: 170, 255, 195", image: "16Mint"),
        HeadLine(id: 17, title: "Olive", text: "RGB: 128, 128, 0", image: "17Olive"),
        HeadLine(id: 18, title: "Apricot", text: "RGB: 255, 215, 180", image: "18Apricot"),
        HeadLine(id: 19, title: "Navy", text: "RGB: 0, 0, 128", image: "19Navy"),
        HeadLine(id: 20, title: "Grey", text: "RGB: 128, 128, 128", image: "20Grey"),
        HeadLine(id: 21, title: "White", text: "RBG: 255, 255, 255", image: "21White"),
        HeadLine(id: 22, title: "Black", text: "RBG: 0, 0 , 0", image: "22Black")
    ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return headlines.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Swift TableView Reorderable Cell Demo"
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headlines[indexPath.row].title
        cell.detailTextLabel?.text = headline.text
        cell.imageView?.image = UIImage(named: headline.image)

        return cell
    }
    
}
