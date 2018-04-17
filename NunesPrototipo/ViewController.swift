//
//  ViewController.swift
//  NunesPrototipo
//
//  Created by Aluno on 4/11/18.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

let drogas = ["Álcool", "LDS", "Maconha", "Cocaína", "Heroína", "Crack", "Loló"]
let sugestao = ["Não extrapola as 3 doses do dia dia não. Na moral\nTenta beber água ou suco no intervalo entre as doses\nNão aceita bebida de estranhos. Se a pessoa tiver um olho no meio da testa, corre!", "Evita misturar com outras drogas/nNão fica perto de espelhos\nUsa sempre acompanhado de um amigo\nBeba bastante água", "Que tal usar um bong ou um vaporizador?\nSe for comer, lembra que demora mais para bater, beleza?", "Evita injetar, que aspirar oferece menos risco\nMas se for o jeito, usa um seringa indiidual.", "Nunca reutilize ou compartilhe a siringa\nUse álcool para limpar o local onde você irá injetar \nDescarte adequadamente para ninguém possa se machucar com a agulha", "Procure substituir essa droga por outra que cause menos danos como a maconha ou o mesclado.\n Caso você queira consumir mesmo assim, use cachimbos. Não neglicencie a sua alimentação", "Evite utilizar em um curto espaço de tempo. Deixe seus batimentos cardíacos amenizarem\nSente-se, beba água e evite fumar, beber bebida alcoólica e utilizar qualquer outro tipo de droga/nSe possível chupe uma laranja, a fruta é rica em vitamina C, frutose e água, diminuindo assim os efeitos negativos da droga\nNão aceite das mãos de estranhos e compre apenas de pessoas previamente conhecidas"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TVCCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "celula")! as! TVCCellTableViewCell
        
        cell.droga.text!  = drogas[indexPath.row]
        cell.instrucoes.text! = sugestao[indexPath.row]
        
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TableView.delegate = self
        //TableView.dataSource = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPopUp(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @IBAction func showEmergenciaPopUp(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "emergenciaPopUp") as! PopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
}

