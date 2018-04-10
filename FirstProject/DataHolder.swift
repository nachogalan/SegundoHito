//
//  DataHolder.swift
//  FirstProject
//
//  Created by IGNACIO GALAN DE PINA on 10/4/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit
import Firebase

class DataHolder: NSObject {

    static let sharedInstance:DataHolder = DataHolder()
    
    var sNickname:String = "nacho"
    func initFireBase(){
        FirebaseApp.configure()
    }
}
