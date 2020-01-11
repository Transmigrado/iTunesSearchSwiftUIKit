//
//  Track.swift
//  iTunesSearch
//
//  Created by Jorge Acosta on 02-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import SwiftUI

struct Track : Identifiable, Decodable {
    
    var id = UUID()
    var wrapperType = ""
    var kind = ""
    var artistId = 0
    var collectionId = 0
    var trackId = 0
    var artistName = ""
    var collectionName = ""
    var trackName = ""
    var collectionCensoredName = ""
    var trackCensoredName = ""
    var artistViewUrl=""
    var collectionViewUrl = ""
    var trackViewUrl = ""
    var previewUrl = ""
    var artworkUrl30 = ""
    var artworkUrl60 = ""
    var artworkUrl100 = ""
    var collectionPrice = 0.0
    var trackPrice = 0.0
    var releaseDate = ""
    var collectionExplicitness = ""
    var trackExplicitness = ""
    var discCount = 0
    var discNumber = 0
    var trackCount = 0
    var trackNumber = 0
    var trackTimeMillis = 0
    var country = ""
    var currency = ""
    var primaryGenreName = ""
    
    private enum CodingKeys: String, CodingKey {
        case wrapperType
        case kind
        case artistId
        case collectionId
        case trackId
        case artistName
        case collectionName
        case trackName
        case collectionCensoredName
        case trackCensoredName
        case artistViewUrl
        case collectionViewUrl
        case trackViewUrl
        case previewUrl
        case artworkUrl30
        case artworkUrl60
        case artworkUrl100
        case collectionPrice
        case trackPrice
        case releaseDate
        case collectionExplicitness
        case trackExplicitness
        case discCount
        case discNumber
        case trackCount
        case trackNumber
        case trackTimeMillis
        case country
        case currency
        case primaryGenreName
 
    }
}

