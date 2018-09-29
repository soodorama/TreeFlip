//
//  EffectVC.swift
//  TreeFlip
//
//  Created by Neil Sood on 9/28/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

protocol EffectVCDelegate: class {
    func backToCausePressed()
    func forwardToResultsPressed(sender: UIBarButtonItem)
}

class EffectVC: UIViewController {

    var delegate: EffectVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backToCausePressed(_ sender: UIBarButtonItem) {
        delegate?.backToCausePressed()
    }
    
    
    @IBAction func forwardToResultsPressed(_ sender: UIBarButtonItem) {
        delegate?.forwardToResultsPressed(sender: sender)
    }
    
}
