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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
  

}
