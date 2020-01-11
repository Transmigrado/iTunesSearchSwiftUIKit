//
//  Fetch.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 11-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

protocol Fetch {
    func retrieve(urlString: String, handler: @escaping ((Page) -> Void))
}
