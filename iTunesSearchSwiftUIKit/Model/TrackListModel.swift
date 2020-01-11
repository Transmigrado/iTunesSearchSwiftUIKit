//
//  TrackListModel.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 11-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import Foundation

class TrackListModel : ListModel
{
    
    var tracks:[Track] = []
    var searchText = "" 
    
    let api : Fetch
    
    init(api : Fetch){
        self.api = api
    }
}
   
