//
//  VCPrincipal.swift
//  FirstProject
//
//  Created by IGNACIO GALAN DE PINA on 4/4/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit

class VCPrincipal: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    @IBOutlet var tbTablaChamp:UITableView?
    var arUsuarios:[Perfil]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DataHolder.sharedInstance.fireStoreDB?.collection("Perfiles").addSnapshotListener { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                self.arUsuarios=[]
                for document in querySnapshot!.documents {
                    
                    let nombre:Perfil = Perfil()
                    nombre.setMap(valores: document.data())
                    self.arUsuarios.append(nombre)
                    
                    print("\(document.documentID) => \(document.data())")
                }
                print("------->>>>>> ",self.arUsuarios.count)
                self.tbTablaChamp?.reloadData()
               self.refreshUI()
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("CONSULTO CANTIDAD DDE FILAS A PINTAR")
        return self.arUsuarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "IDmiCelda") as! MiCelda1
        celda.lblTabla?.text = self.arUsuarios[indexPath.row].sNombre
        celda.lblEmail?.text = self.arUsuarios[indexPath.row].sApellido
        celda.mostrarImagen(uri: self.arUsuarios[indexPath.row].sImage!)
        return celda
    }
    
    func refreshUI() {
        DispatchQueue.main.async(execute: {
            self.tbTablaChamp?.reloadData()
        })
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
