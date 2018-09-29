//
//  CauseVC.swift
//  TreeFlip
//
//  Created by Neil Sood on 9/28/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class CauseVC: UIViewController {
    
    @IBOutlet weak var percentTextField: UITextField!
    @IBOutlet weak var causeLabel: UITextField!
    @IBOutlet var oppPercentLabel: UIView!
    @IBOutlet weak var oppCauseLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func toEffectPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ToEffectSegue", sender: sender)
    }
    
}

