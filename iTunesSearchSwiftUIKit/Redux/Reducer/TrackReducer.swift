//
//  TrackReducer.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 12-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import ReSwift

func trackReducer(action: Action, state: AppState?) -> AppState {

    guard var state = state else {
        return AppState()
    }
    switch action {
    case let action as SelectTrack:
        state.track = action.track!
    default:break
    }
  
    return state
}
