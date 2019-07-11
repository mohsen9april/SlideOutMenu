//
//  ViewController.swift
//  SlideOutMenu
//
//  Created by Mohsen Abdollahi on 7/11/19.
//  Copyright © 2019 Mohsen Abdollahi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItems()
        tableView.backgroundColor = .red
    }
    
    fileprivate func  setupNavigationItems(){
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleOpen))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleHide))
    }
    @objc func handleOpen(){
        print("Opening menu is...")
    }
    @objc func handleHide(){
       print("Hide is clicking....")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Row : \(indexPath.row)"
        return cell
    }
}
