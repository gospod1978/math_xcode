//
//  Thurd.swift
//  Emanuela
//
//  Created by Mihail Gospodinov on 14/05/2020.
//  Copyright © 2020 Mihail Gospodinov. All rights reserved.
//

import UIKit

class Thurd: UIViewController {

    @IBOutlet weak var EmaLabel: UILabel!
    
    @IBOutlet weak var Till20: UIButton!
    
    @IBOutlet weak var Till50: UIButton!
    
    @IBOutlet weak var Till100: UIButton!
    
    
    var addLabel = ""
    
    var choisNumber: String = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()

                  customizeButtonC(buttonName: Till20)
                  customizeButtonC(buttonName: Till50)
                  customizeButtonC(buttonName: Till100)
                  
                  EmaLabel.text = "Ema chose " + addLabel
            
              }
              

              func customizeButtonC(buttonName: UIButton) {
                     buttonName.layer.cornerRadius = 25
                     buttonName.layer.borderColor = UIColor.red.cgColor
                     buttonName.layer.borderWidth = 5
                     buttonName.layer.backgroundColor = UIColor.yellow.cgColor
                 }

    @IBAction func Number20(_ sender: Any) {
        self.choisNumber = "0 - 20"
        
        performSegue(withIdentifier: "goToFour", sender: self)
    }
    
    @IBAction func Number50(_ sender: Any) {
        self.choisNumber = "0 - 50"
        
        performSegue(withIdentifier: "goToFour", sender: self)
    }
    
    @IBAction func Number100(_ sender: Any) {
        self.choisNumber = "0 - 100"
        
        performSegue(withIdentifier: "goToFour", sender: self)
    }
    
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as! Four
            vc.numberLabel = self.choisNumber
            vc.emaChuse = self.addLabel
        }
    }



