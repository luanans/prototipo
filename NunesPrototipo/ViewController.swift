//
//  ViewController.swift
//  NunesPrototipo
//
//  Created by Aluno on 4/11/18.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

let drogas = ["Álcool", "LDS", "Maconha", "Cigarro", "Cocaína", ""]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TVCCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "celula")! as! TVCCellTableViewCell
        
        //cell.droga 
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drogas.count
    }
    
    

    private var dataCellExpanded: Int = -1
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if dataCellExpanded != indexPath.row {
            dataCellExpanded = indexPath.row
        } else {
            dataCellExpanded = -1
        }
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if dataCellExpanded == indexPath.row {
            return 250
        } else {
            return 50
        }
    }
    
    
    @IBOutlet var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.delegate = self
        TableView.dataSource = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

