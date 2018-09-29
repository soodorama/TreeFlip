//
//  ProbabilityVC.swift
//  TreeFlip
//
//  Created by Neil Sood on 9/28/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

protocol ProbabilityVCDelegate: class {
    func backToEffectPressed()
    func forwardToSavePressed()
}

class ProbabilityVC: UIViewController {

    var delegate: ProbabilityVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backToEffectPreassed(_ sender: UIBarButtonItem) {
        delegate?.backToEffectPressed()
    }
    
    @IBAction func forwardToSavePressed(_ sender: UIBarButtonItem) {
        delegate?.forwardToSavePressed()
    }
    
}
