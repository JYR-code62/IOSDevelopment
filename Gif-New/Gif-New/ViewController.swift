//
//  ViewController.swift
//  Gif-New
//
//  Created by Jyoti1 Yadav on 28/10/21.
// Implemented on 24/11/2021

// NOTE: This code adds a GIF from url to an ImageView using KingFisher Pod.

import UIKit
import Kingfisher


class ViewController: UIViewController {
    
    let url = URL(string: "https://media.giphy.com/media/l0G16FRujv2fiD3Ne/giphy.gif") //Url of the GIF
    var imageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        imageView.kf.setImage(with: url)
        print("Added gif to imageView")
        view.addSubview(imageView)
        imageView.center = view.center
    }


}

