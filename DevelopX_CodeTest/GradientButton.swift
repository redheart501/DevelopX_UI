//
//  GradientButton.swift
//  DevelopX_CodeTest
//
//  Created by Kyaw Ye Htun on 20/10/2023.
//

import Foundation
import UIKit

class GradientButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }

    private lazy var gradientLayer: CAGradientLayer = {
        let l = CAGradientLayer()
        l.frame = self.bounds
        let colorTop = UIColor(red: 102.0 / 255.0, green: 55.0 / 255.0, blue: 245.0 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 149.0 / 255.0, green: 84.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0).cgColor

        l.colors = [colorTop, colorBottom]
        l.startPoint = CGPoint(x: 0, y: 0.5)
        l.endPoint = CGPoint(x: 1, y: 0.5)
//        l.cornerRadius = 16
        layer.insertSublayer(l, at: 0)
        return l
    }()
}
