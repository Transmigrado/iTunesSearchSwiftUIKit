//
//  AudioModel.swift
//  iTunesSearch
//
//  Created by Jorge Acosta on 03-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import Foundation
import SwiftAudio
import Combine

class AudioModel: ObservableObject {
    @Published var progress: Float = 0.0
    var audioPlayer = AudioPlayer()
    var audioUrl = "" {
        didSet {
            let audioItem = DefaultAudioItem(audioUrl: audioUrl, sourceType: .stream)
            do {
                _ = try audioPlayer.load(item: audioItem, playWhenReady: true)
            } catch let error {
                debugPrint(error)
            }
        }
    }
    init() {
        audioPlayer.event.secondElapse.addListener(self) { event in
            DispatchQueue.main.async {
                self.progress = Float(event) / 30.0
            }
        }
    }
}
