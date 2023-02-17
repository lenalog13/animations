//
//  DataManager.swift
//  animations
//
//  Created by Елена Логинова on 17.02.2023.
//

import SpringAnimation

class DataManager {
    static let shared = DataManager()
    
    let precets = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
                    
}
