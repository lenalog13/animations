//
//  Animation.swift
//  animations
//
//  Created by Елена Логинова on 17.02.2023.
//

import Foundation

struct Animation {
    
    let precet: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        precet: \(precet)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    
    static func getRandomData() -> Animation {
        Animation(precet: DataManager.shared.precets.randomElement()?.rawValue ?? "pop",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
                  force: Double.random(in: 0.5...2.5),
                  duration: Double.random(in: 0.5...2.5),
                  delay: Double.random(in: 0.1...1))
    }
    
}
