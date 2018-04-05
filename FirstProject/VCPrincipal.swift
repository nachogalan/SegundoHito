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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "IDmiCelda") as! MiCelda1
        if indexPath.row==0 {
            celda.lblTabla?.text="Master Yi"
        }else if indexPath.row == 1 {
            celda.lblTabla?.text="Yasuo"
        }else if indexPath.row == 2 {
            celda.lblTabla?.text="Teemo"
        }else if indexPath.row == 3 {
            celda.lblTabla?.text="Riven"
        }else if indexPath.row == 4 {
            celda.lblTabla?.text="Fiora"
        }
        
        
        return celda
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
