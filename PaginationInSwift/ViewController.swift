//
//  ViewController.swift
//  PaginationInSwift
//
//  Created by Dnyaneshwar Shinde on 18/04/18.
//  Copyright © 2018 Dnyaneshwar Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
   
    
    var dataArray = [1]
    
    @IBOutlet weak var myTableView: UITableView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellID")
        cell.textLabel?.text = "\(dataArray[indexPath.row])"
        return cell
    } 
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == dataArray.count - 1 {
            // Add here your data
            moreData()
        }
    }
        func moreData (){
            for _ in 0...9 {
                 dataArray.append(dataArray.last! + 1)
                print(dataArray.last!)
            }
            myTableView.reloadData()
        }
}

