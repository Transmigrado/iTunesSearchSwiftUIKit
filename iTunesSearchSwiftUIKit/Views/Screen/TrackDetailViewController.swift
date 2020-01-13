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
    @IBOutlet var trackNameLabel: UILabel?
    @IBOutlet var artistNameLabel: UILabel?
    @IBOutlet var progress: UIProgressView?
    var audioModel: AudioModel?
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
        artistNameLabel?.text = track.artistName
        trackNameLabel?.text = track.trackName
        _ = audioModel?.$progress
            .receive(on: DispatchQueue.main)
            .assign(to: \.progress, on: self.progress!)
    }

    @IBAction func togglePlay(sender: UIButton) {
        audioModel?.audioUrl = mainStore.state.track.previewUrl
    }
}
