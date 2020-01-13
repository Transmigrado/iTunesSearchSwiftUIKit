//
//  TrackDetailViewController.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 12-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import UIKit
import ReSwift
import Nuke

class TrackDetailViewController: UIViewController, StoreSubscriber {
    @IBOutlet var imagebackTrack: UIImageView?
    @IBOutlet var image: UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
      mainStore.subscribe(self)
    }

    override func viewWillDisappear(_ animated: Bool) {
      mainStore.unsubscribe(self)
    }
    func newState(state: AppState) {
        let track: Track = state.track
        let urlImage = URL(string: track.artworkUrl100)
        Nuke.loadImage(with: urlImage!, into: imagebackTrack!)
        Nuke.loadImage(with: urlImage!, into: image!)
    }

}
