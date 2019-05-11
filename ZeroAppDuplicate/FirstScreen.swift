//
//  FirstScreen.swift
//  ZeroAppDuplicate
//
//  Created by Michal Gaborik on 28/04/2019.
//  Copyright © 2019 Michal Gaborik. All rights reserved.
//

import UIKit
import AssetsLibrary

class FirstScreen: UIViewController {
    let image: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "opo_human"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colorFromHex(rgbValue: 0xFCFAF7, alpha: 1)
        view.addSubview(image)
        
        setupLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func colorFromHex(rgbValue: UInt32, alpha: Double = 1.0) -> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
    private func setupLayout() {
        setupImage()
    }
    
    private func setupImage() {
        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        image.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        image.contentMode = .scaleAspectFit
    }
}
