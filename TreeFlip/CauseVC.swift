//
//  CauseVC.swift
//  TreeFlip
//
//  Created by Neil Sood on 9/28/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

protocol CauseVCDelegate: class {
    func backToTableViewPressed(sender: UIBarButtonItem)
    func forwardToEffectPressed(sender: UIBarButtonItem)
}

class CauseVC: UIViewController {
    
    @IBOutlet weak var percentTextField: UITextField!
    @IBOutlet weak var causeLabel: UITextField!
    @IBOutlet weak var oppPercentLabel: UILabel!
    @IBOutlet weak var oppCauseLabel: UITextField!
    
    var delegate: CauseVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        percentTextField.keyboardType = UIKeyboardType.decimalPad
        percentTextField.addTarget(self, action: #selector(CauseVC.textFieldDidChange(_:)), for: .editingChanged)

    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        print(textField)
        
        oppPercentLabel.text = 1.0 - Double(percentTextField.text)
    }

    @IBAction func forwardToEffectPressed(_ sender: UIBarButtonItem) {
        delegate?.forwardToEffectPressed(sender: sender)
    }
    
    @IBAction func backToTableViewPressed(_ sender: UIBarButtonItem) {
        delegate?.backToTableViewPressed(sender: sender)
    }
    
}



