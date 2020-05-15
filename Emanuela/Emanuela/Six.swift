//
//  Six.swift
//  Emanuela
//
//  Created by Mihail Gospodinov on 15/05/2020.
//  Copyright © 2020 Mihail Gospodinov. All rights reserved.
//

import UIKit

class Six: UIViewController {

    @IBOutlet weak var video: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customizeButtonC(buttonName: video)
        video.setTitle("PLAY AGAIN EMA", for: .normal)
    }
    
    func customizeButtonC(buttonName: UIButton) {
                           buttonName.layer.cornerRadius = 25
                           buttonName.layer.borderColor = UIColor.red.cgColor
                           buttonName.layer.borderWidth = 5
                           buttonName.layer.backgroundColor = UIColor.yellow.cgColor
                       }

    @IBAction func goBack(_ sender: Any) {
        performSegue(withIdentifier: "goToFirst", sender: self)
    }
  

}
