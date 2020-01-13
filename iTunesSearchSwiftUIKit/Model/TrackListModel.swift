//
//  TrackListModel.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 11-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import Foundation
import Combine

class TrackListModel: ListModel {

    @Published var tracks: [Track] = []
    var page = 0 {
        didSet {
            retrieve(term: searchText)
        }
    }
    var searchText = "" {
        didSet {
            page = 0
            tracks = []
            retrieve(term: searchText)
        }
    }

    let api: Fetch

    init(api: Fetch) {
        self.api = api
    }

    private func retrieve(term: String) {
        api.retrieve(urlString: "\(Constants.baseUrl)\(term)&offset=\(page * 20)") { response in
            self.tracks.append(contentsOf: response.results)
        }
    }
}
