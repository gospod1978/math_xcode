//
//  Four.swift
//  Emanuela
//
//  Created by Mihail Gospodinov on 14/05/2020.
//  Copyright © 2020 Mihail Gospodinov. All rights reserved.
//

import UIKit

class Four: UIViewController {

    @IBOutlet weak var EmaText: UILabel!
    
    @IBOutlet weak var EmaNumber: UILabel!
    
    @IBOutlet weak var playEma: UIButton!
    
    var numberLabel = ""
    var emaChuse = ""
    
   override func viewDidLoad() {
            super.viewDidLoad()
            customizeButtonC(buttonName: playEma)
            
            
            EmaText.text = "Ema chose " + emaChuse
            EmaNumber.text = numberLabel
        }
        
        func customizeButtonC(buttonName: UIButton) {
            buttonName.layer.cornerRadius = 25
            buttonName.layer.borderColor = UIColor.red.cgColor
            buttonName.layer.borderWidth = 5
            buttonName.layer.backgroundColor = UIColor.yellow.cgColor
            
        }
        
    @IBAction func playGame(_ sender: Any) {
        performSegue(withIdentifier: "goToFive", sender: self)
    }
    
        
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               let vc = segue.destination as! Five
               vc.emaNumber = self.numberLabel
               vc.emaLabel = self.emaChuse
           }
        
    }
