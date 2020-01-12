//
//  Inject.swift
//  iTunesSearch
//
//  Created by Jorge Acosta on 03-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import Foundation
import Swinject

enum InjectName: String {
    case trackListModel
    case trackSearchVC
}

extension Container {
    func resolve<R>(from: InjectName) -> R {

        let resolver: Inject<R> =  (resolve(InjectContainer.self, name: from.rawValue) as? Inject<R>)!
        return resolver.value
    }

    func register<T>(from: InjectName, value: T) {
        register(InjectContainer.self, name: from.rawValue) {_ in Inject<T>(value: value)}
    }
}

protocol InjectContainer {
}

struct Inject<T>: InjectContainer {
    var value: T
    init(value: T) {
        self.value = value
    }
}
