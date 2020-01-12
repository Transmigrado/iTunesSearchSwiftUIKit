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
        defaultContainer.register(from: .trackListModel, value: TrackListModel(api: TrackApi()))
        defaultContainer.storyboardInitCompleted(TrackSearchViewController.self) { _, controller in
            controller.model =  defaultContainer.resolve(from: .trackListModel) as TrackListModel
        }
    }
}
