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
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var nextButton: UIButton!
    
    //MARK: - Private Propertice
    
    private var precet: String!
    private var curve: String!
    private var force: CGFloat!
    private var duration: CGFloat!
    private var delay: CGFloat!
    
    private let precetArray = ["pop",
                               "slideLeft",
                               "slideRight",
                               "slideDown",
                               "slideUp",
                               "squeezeLeft",
                               "squeezeRight",
                               "squeezeDown",
                               "squeezeUp",
                               "fadeIn",
                               "fadeOut",
                               "fadeOutIn",
                               "fadeInLeft",
                               "fadeInRight",
                               "fadeInDown",
                               "fadeInUp",
                               "zoomIn",
                               "zoomOut",
                               "fall",
                               "shake",
                               "flipX",
                               "flipY",
                               "morph",
                               "squeeze",
                               "flash",
                               "wobble",
                               "swing"]
    
    private let curveArray = ["easeIn",
                              "easeOut",
                              "easeInOut",
                              "linear",
                              "spring",
                              "easeInSine",
                              "easeOutSine",
                              "easeInOutSine",
                              "easeInQuad",
                              "easeOutQuad",
                              "easeInOutQuad",
                              "easeInCubic",
                              "easeOutCubic",
                              "easeInOutCubic",
                              "easeInQuart",
                              "easeOutQuart",
                              "easeInOutQuart",
                              "easeInQuint",
                              "easeOutQuint",
                              "easeInOutQuint",
                              "easeInExpo",
                              "easeOutExpo",
                              "easeInOutExpo",
                              "easeInCirc",
                              "easeOutCirc",
                              "easeInOutCirc",
                              "easeInBack",
                              "easeOutBack",
                              "easeInOutBack"]
    
    
    //MARK: - Override Func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        nextButton.layer.cornerRadius = 10
        getRandomData()
        setDataLabel()
    }
    
    //MARK: - IBAction

    @IBAction func pressedButton() {
        setDataLabel()
        
        mainView.animation = precet
        mainView.curve = curve
        mainView.force = force
        mainView.duration = duration
        mainView.delay = delay
        mainView.animate()
        
        getRandomData()
        
        nextButton.setTitle("Run \(precet ?? "")", for: .normal)
    }
    
    //MARK: - Private Func
    
    private func getRandomData() {
        precet = precetArray[Int.random(in: 0..<precetArray.count)]
        curve = curveArray[Int.random(in: 0..<curveArray.count)]
        force = getRandomNumber(from: 50, to: 250)
        duration = getRandomNumber(from: 50, to: 250)
        delay = getRandomNumber(from: 1, to: 100)
    }
    
    private func getRandomNumber(from numberOne: Int, to numberTwo: Int) -> CGFloat {
        CGFloat(Int.random(in: numberOne...numberTwo)) / 100
    }
    
    private func setDataLabel() {
        presetLabel.text = "precet: \(precet ?? "")"
        curveLabel.text = "curve: \(curve ?? "")"
        forceLabel.text = "force: \(force ?? 0)"
        durationLabel.text = "duration: \(duration ?? 0)"
        delayLabel.text = "delay: \(delay ?? 0)"
    }
    
}

