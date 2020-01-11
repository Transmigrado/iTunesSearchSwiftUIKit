//
//  Page.swift
//  iTunesSearch
//
//  Created by Jorge Acosta on 02-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import Foundation

struct Page: Decodable {

   let resultCount: Int
   let results:[Track]

   enum CodingKeys: String, CodingKey {
       case resultCount
       case results
   }
}
