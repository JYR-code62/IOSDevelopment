//
//  HomeViewController.swift
//  LaunchScreenWithAnimation
//
//  Created by Jyoti1 Yadav on 24/11/21.
//

// NOTE :  This is the actual App Screen. 

import UIKit

class HomeViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.text = "FriendBook"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        view.backgroundColor = .link
        label.center = view.center
        
    }
    

   

}
