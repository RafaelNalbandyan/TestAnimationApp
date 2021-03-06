//
//  Extension+UIView.swift
//  TestAnimationApp
//
//  Created by Rafael Nalbandyan on 3/6/21.
//

import UIKit

extension UIView {
    func rotate() {
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 10
        rotation.repeatCount = Float.greatestFiniteMagnitude
        self.layer.add(rotation, forKey: "rotationAnimation")
    }
}

