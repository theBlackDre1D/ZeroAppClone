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
    
    let nextButton = UIButton()
    
    let logoImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    func setNextButtonConstrains() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }

}
