//
//  DataHolder.swift
//  FirstProject
//
//  Created by IGNACIO GALAN DE PINA on 10/4/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage


class DataHolder: NSObject {

    static let sharedInstance:DataHolder = DataHolder()
    
    var fireStoreDB:Firestore?
    var miPerfil:Perfil = Perfil()
    var firStorage:Storage?
    var arUsuarios:[Perfil] = []
    var sNickname:String = "QWERTY@gmail.com"
    
    func initFireBase(){
        FirebaseApp.configure()
        fireStoreDB = Firestore.firestore()
        firStorage = Storage.storage()
        
    }

}

