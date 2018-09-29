//
//  CauseVC.swift
//  TreeFlip
//
//  Created by Neil Sood on 9/28/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

protocol CauseVCDelegate: class {
    func backToTableViewPressed()
    func forwardToEffectPressed(sender: UIBarButtonItem)
}

class CauseVC: UIViewController {
    
    @IBOutlet weak var percentTextField: UITextField!
    @IBOutlet weak var causeLabel: UITextField!
    @IBOutlet var oppPercentLabel: UIView!
    @IBOutlet weak var oppCauseLabel: UITextField!
    
    var delegate: CauseVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func forwardToEffectPressed(_ sender: UIBarButtonItem) {
        delegate?.forwardToEffectPressed(sender: sender)
    }
    
    @IBAction func backToTableViewPressed(_ sender: UIBarButtonItem) {
        delegate?.backToTableViewPressed()
    }
    
}



