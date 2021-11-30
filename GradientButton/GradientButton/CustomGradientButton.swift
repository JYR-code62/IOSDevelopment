//
//  CustomGradientButton.swift
//  GradientButton
//
//  Created by Jyoti1 Yadav on 30/11/21.
//
// NOTE: This is a custom button which can be initialized with gradient colors.

import UIKit

class CustomGradientButton: UIButton {

    let gradient = CAGradientLayer()
    
    init(colors: [CGColor]){
        super.init(frame: .zero)
        gradient.frame = bounds
        gradient.colors = colors
        
       // ######### To Apply Horizontal Gradient ############
        //gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        //gradient.endPoint = CGPoint(x: 1.0, y: 0.5)

        layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
}
