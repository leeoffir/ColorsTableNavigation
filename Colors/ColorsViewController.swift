//
//  ColorsViewController.swift
//  Colors
//
//  Created by Lee Offir on 3/16/18.
//  Copyright © 2018 Lee Offir. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var colorsTableArray = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsTableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellOfColors", for: indexPath)
        
        cell.textLabel?.text = colorsTableArray[indexPath.row]
        
        return cell
}
}
