//
//  TrackCell.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 11-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {
    @IBOutlet var trackImage: UIImageView?
    @IBOutlet var title: UILabel?
    @IBOutlet var subtitle: UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(withTrack track: Track) {
      
        self.title?.text = track.trackName
        self.subtitle?.text = track.artistName
        Nuke.loadImage(with: URL(string: track.artworkUrl100)!, into: trackImage!)
    }

}
