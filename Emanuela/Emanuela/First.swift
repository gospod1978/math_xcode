//
//  ViewController.swift
//  Emanuela
//
//  Created by Mihail Gospodinov on 12/05/2020.
//  Copyright © 2020 Mihail Gospodinov. All rights reserved.
//

import UIKit

class First: UIViewController {

    
    @IBOutlet weak var playButton: UIButton!
    
       
      override func viewDidLoad() {
            super.viewDidLoad()
           customizeButtonC(buttonName: playButton)
        }
        
       func customizeButtonC(buttonName: UIButton) {
           buttonName.layer.cornerRadius = 25
           buttonName.layer.borderColor = UIColor.red.cgColor
           buttonName.layer.borderWidth = 5
           buttonName.layer.backgroundColor = UIColor.yellow.cgColor
       }

}

