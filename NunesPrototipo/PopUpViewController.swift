//
//  PopUpViewController.swift
//  NunesPrototipo
//
//  Created by Aluno on 13/04/18.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource  {
 
    @IBOutlet weak var textoAbusei: UILabel!
    
    let dias = ["Domingo", "Segunda", "Terça", "Quarta", "Quinta","Sexta", "Sábado"]
    
    
    let numeros = ["18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35", "34", "35","36", "37","38","39", "40"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 1 {
            return drogas.count
        }
        return dias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = CheckTableViewCell()
        
        if tableView.tag == 1 {
        
            cell = tableView.dequeueReusableCell(withIdentifier: "celulaDroga") as! CheckTableViewCell
            
            cell.elementoCheckList?.text = drogas[indexPath.row]
            
        } else if tableView.tag == 2 {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "celulaDroga") as! CheckTableViewCell
            
            cell.elemento2?.text = dias[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numeros.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numeros[row]
    }

    @IBOutlet weak var Idade: UILabel!
    @IBOutlet weak var Peso: UILabel!
    @IBOutlet weak var pickerViewIDADE: UIPickerView!
    
    @IBOutlet weak var pickerViewPESO: UIPickerView!
    @IBAction func fechar(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        textoAbusei.text = "Entregue o seu dispositivo a um amigo!\n1.Faça Fulano beber bastante água\n2.O ajude a induzir o vômito\n3.Dê mais água a ele\n4.Leve-o para um local calmo onde ele possa ficar deitado lateralmente"

        // Do any additional setup after loading the view.
    }

    @IBAction func fecharEmergencia(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    override func didReceiveMemoryWarning() {
        self.view.removeFromSuperview()
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
