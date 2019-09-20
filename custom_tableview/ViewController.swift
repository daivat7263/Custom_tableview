//
//  ViewController.swift
//  custom_tableview
//
//  Created by COE-02 on 20/09/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource
{
    let Studentdetails = [
    
        ["Name" : "Pooja" , "Grade" : "A"],
        ["Name" : "Mahesh" , "Grade" : "A"],
         ["Name" : "Suresh" , "Grade" : "B"],
          ["Name" : "Krupesh" , "Grade" : "C"],
           ["Name" : "Dinesh" , "Grade" : "A"],
            ["Name" : "Kamlesh" , "Grade" : "D"],
         ["Name" : "Ramesh" , "Grade" : "C"]
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Studentdetails.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let details = Studentdetails[indexPath.row]
    
    cell.textLabel?.text = details ["Name"]
    cell.detailTextLabel?.text = details ["Grade"]
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

