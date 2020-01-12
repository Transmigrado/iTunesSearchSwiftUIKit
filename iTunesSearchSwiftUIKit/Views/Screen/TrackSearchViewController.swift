//
//  TrackSearchViewController.swift
//  iTunesSearchSwiftUIKit
//
//  Created by Jorge Acosta on 11-01-20.
//  Copyright © 2020 Jorge Acosta. All rights reserved.
//

import UIKit
import ReSwift
import Swinject

class TrackSearchViewController: UITableViewController, StoreSubscriber {

    typealias StoreSubscriberStateType = AppState
    var model: TrackListModel?
    var container: Container?
    override func viewDidLoad() {
        super.viewDidLoad()
        bindModel()
        model?.searchText = "Coldplay"
    }
    override func viewWillAppear(_ animated: Bool) {
       mainStore.subscribe(self)
    }

    override func viewWillDisappear(_ animated: Bool) {
       mainStore.unsubscribe(self)
    }
    func bindModel() {
        model?.$tracks.receive(on: DispatchQueue.main)
                        .sink { _ in
                            self.tableView!.reloadData()
                        }
    }
    func newState(state: AppState) {
    }
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model?.tracks.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath) as? TrackCell)!
        let item = self.model?.tracks[indexPath.row]
        cell.configure(withTrack: item!)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = self.model?.tracks[indexPath.row]
        mainStore.dispatch(SelectTrack(track: item))
    }
}
