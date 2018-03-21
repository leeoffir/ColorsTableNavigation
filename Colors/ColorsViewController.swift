//
//  ColorsViewController.swift
//  Colors
//
//  Created by Lee Offir on 3/16/18.
//  Copyright © 2018 Lee Offir. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   // var colorsTableArray = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]
    
    var colorsTableArray =
        [Color(name:"red", uiColor: UIColor.red),
        Color(name:"orange", uiColor: UIColor.orange),
        Color(name:"yellow", uiColor: UIColor.yellow),
        Color(name:"green", uiColor: UIColor.green),
        Color(name:"blue", uiColor: UIColor.blue),
        Color(name:"purple", uiColor: UIColor.purple),
        Color(name:"brown", uiColor: UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsTableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellOfColors", for: indexPath)
        
        let color = colorsTableArray[indexPath.row]
        
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.uiColor
        return cell
}
}
