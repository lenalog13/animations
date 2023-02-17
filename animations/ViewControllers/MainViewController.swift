//
//  ViewController.swift
//  animations
//
//  Created by Елена Логинова on 14.02.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
    
    //MARK: - IBOutlet
    
    @IBOutlet var mainView: SpringView!
    
    @IBOutlet var mainLabel: UILabel!
    
    @IBOutlet var nextButton: UIButton!
    
    //MARK: - Private Propertice
    
    private var animation = Animation.getRandomData()
    
    //MARK: - Override Func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = animation.description
        mainView.layer.cornerRadius = 10
        nextButton.layer.cornerRadius = 10
    }
    
    //MARK: - IBAction

    @IBAction func pressedButton() {
        mainLabel.text = animation.description
        
        mainView.animation = animation.precet
        mainView.curve = animation.curve
        mainView.force = animation.force
        mainView.duration = animation.duration
        mainView.delay = animation.delay
        mainView.animate()
        
        animation = Animation.getRandomData()
        
        nextButton.setTitle("Run \(animation.precet)", for: .normal)
    }
    


    
}

