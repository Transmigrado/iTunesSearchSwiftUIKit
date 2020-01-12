//
//  PlayerViewController.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 12-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSize()
    }
    func configureSize() {
        let height = 69.0
        let width = Double(self.view.frame.size.width)
        let positionY = Double(UIScreen.main.bounds.height) - height
        self.view.frame = CGRect(x: 0.0, y: positionY, width: width, height: height)
    }

}
