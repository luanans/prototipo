//
//  TableViewController.swift
//  NunesPrototipo
//
//  Created by Aluno on 4/12/18.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    private var dataCellExpanded: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        if indexPath.row == 0 {
        
        if dataCellExpanded != indexPath.row {
            dataCellExpanded = indexPath.row
        } else {
            dataCellExpanded = -1
        }
        tableView.beginUpdates()
        tableView.endUpdates()
        //        }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //        if indexPath.row == 0 {
        if dataCellExpanded == indexPath.row {
            return 250
        } else {
            return 50
        }
        //        }
        //        return 50
    }
}


