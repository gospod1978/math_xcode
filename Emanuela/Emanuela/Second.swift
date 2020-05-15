//
//  Second.swift
//  Emanuela
//
//  Created by Mihail Gospodinov on 12/05/2020.
//  Copyright © 2020 Mihail Gospodinov. All rights reserved.
//

import UIKit

class Second: UIViewController {

    
    @IBOutlet weak var ADD: UIButton!
    
    @IBOutlet weak var Substract: UIButton!
    
    @IBOutlet weak var BOTH: UIButton!
    
    var buttonAdd: String = ""
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            customizeButtonC(buttonName: ADD)
            customizeButtonC(buttonName: Substract)
            customizeButtonC(buttonName: BOTH)
            
        }
        

        func customizeButtonC(buttonName: UIButton) {
               buttonName.layer.cornerRadius = 25
               buttonName.layer.borderColor = UIColor.red.cgColor
               buttonName.layer.borderWidth = 5
               buttonName.layer.backgroundColor = UIColor.yellow.cgColor
               
           }
    
    
    @IBAction func addAction(_ sender: Any) {
        self.buttonAdd = "ADD"
        
        performSegue(withIdentifier: "goToThurd", sender: self)
    }
    
    @IBAction func subAction(_ sender: Any) {
        self.buttonAdd = "SUBSTRACT"
        
        performSegue(withIdentifier: "goToThurd", sender: self)
    }
    
    @IBAction func bothAction(_ sender: Any) {
        self.buttonAdd = "BOTH"
        
        performSegue(withIdentifier: "goToThurd", sender: self)
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as! Thurd
            vc.addLabel = self.buttonAdd
        }
        
    }
