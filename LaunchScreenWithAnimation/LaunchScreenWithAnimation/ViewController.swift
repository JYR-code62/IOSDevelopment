//
//  ViewController.swift
//  LaunchScreenWithAnimation
//
//  Created by Jyoti1 Yadav on 24/11/21.
//

//NOTE : This swift file handles all the animation effects for the Image (Splash Screen Logo) & the transition to actual app screen (HomeViewController).

import UIKit

class ViewController: UIViewController {
    
    // Making an imageView here so that our ViewController mimics the launchScreen. (i.e., View Controller also shows the logo on loading)
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(systemName: "f.cursive.circle.fill")
        return imageView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute: {
            self.animate()
        })
        
        
    }

    private func animate(){
        
        //This block of code will increase the size of the image to show animating effect
        UIView.animate(withDuration: 1, animations: {
            
            let size = self.view.frame.size.width * 3
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            
            self.imageView.frame = CGRect(x: -(diffX/2), y: diffY/2, width: size, height: size)
            
            
        })
        
        //This block of code will fade away the image slowly with an animating effect.
        UIView.animate(withDuration: 1.5, animations: {
            self.imageView.alpha = 0 // To fade away the image
        }, completion: { done in
            
            if done {
                //This block of code will do the required transition from ViewController screen to HomeViewController screen which is our actual app.
                DispatchQueue.main.asyncAfter(deadline: .now()+0.3, execute: {
                    let homeVC = HomeViewController()
                    homeVC.modalTransitionStyle = .crossDissolve
                    homeVC.modalPresentationStyle = .fullScreen
                    self.present(homeVC,animated: true)
                })
                
                
            }
            
        })
        
        
        
    }

}


// After the image fades away, we also want our ViewController to fade away to HomeViewController, which is our actual app.
// So, we need to get rid of this ViewController & present the HomeViewController.
