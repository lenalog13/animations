//
//  ViewController.swift
//  animations
//
//  Created by Елена Логинова on 14.02.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        nextButton.layer.cornerRadius = 10
    }


}

