//
//  File.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 11-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//


import SwinjectStoryboard

extension SwinjectStoryboard {
    @objc class func setup() {
        defaultContainer.storyboardInitCompleted(TrackSearchViewController.self) { r, c in
           
        }
       
    }
}
