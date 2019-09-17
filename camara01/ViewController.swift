//
//  ViewController.swift
//  camara01
//
//  Created by Usuário Convidado on 16/09/19.
//  Copyright © 2019 Usuário Convidado. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    @IBOutlet weak var lbTemp: UILabel!
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ref = Database.database().reference(withPath: "temperatura")
        ref.observe(.value, with: { snapshot in
            print(snapshot.value as Any)
            self.lbTemp.text = Float(snapshot.value)
        })

    }


}

