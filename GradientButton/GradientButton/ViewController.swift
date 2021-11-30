//
//  ViewController.swift
//  GradientButton
//
//  Created by Jyoti1 Yadav on 30/11/21.
//

//This file uses the CustomGradientButton.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = CustomGradientButton(colors: [UIColor.systemBlue.cgColor, UIColor.systemRed.cgColor])
        button.frame = CGRect(x: 0, y: 0, width: 220, height: 50)
        button.center = view.center
        button.setTitle("Gradient Button", for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        view.addSubview(button)
    }


}

