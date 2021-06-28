//
//  ViewController.swift
//  tableViewProgramatically
//
//  Created by minal borole on 28/06/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell != nil{
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = arrData[indexPath.row]
        cell?.detailTextLabel?.text = arrayData[indexPath.row]
        return cell!
    }
    
    var arrData = ["one","two","three","four","five","six"]
    var arrayData = ["hii","hello","by","tata","how","welcome"]
    var tblView: UITableView = UITableView()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainScreen = UIScreen.main.bounds
        
        let screenWidth = mainScreen.width
        let screenHight = mainScreen.height
        tblView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHight)
        
        tblView.delegate = self
        tblView.dataSource = self
        
        tblView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tblView)
        
        
        // Do any additional setup after loading the view.
    }


}

