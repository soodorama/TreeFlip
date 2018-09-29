//
//  MainVC.swift
//  TreeFlip
//
//  Created by Neil Sood on 9/28/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTreeFlipPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ToCauseSegue", sender: sender)
    }
    
}

extension MainVC: CauseVCDelegate {
    func backToTableViewPressed(sender: UIBarButtonItem) {
        performSegue(withIdentifier: "unwindToTableView", sender: self)
    }
    
    func forwardToEffectPressed(sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ToEffectSegue", sender: sender)
    }
    
}

extension MainVC: EffectVCDelegate {
    func backToCausePressed() {
        dismiss(animated: true, completion: nil)
    }
    func forwardToResultsPressed(sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ToResultsSegue", sender: sender)
    }
}

extension MainVC: ProbabilityVCDelegate {
    func backToEffectPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    func forwardToSavePressed() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
