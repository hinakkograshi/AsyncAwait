//
//  ViewController.swift
//  AsyncAwait
//
//  Created by Hina on 2024/01/25.
//

import UIKit

final class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        PrefectureData().prefectureList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = PrefectureData().prefectureList[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPrefecture = PrefectureData().prefectureList[indexPath.row]
        let storyboard = UIStoryboard(name: "SelectionView", bundle: nil)
        let selectionVC = storyboard.instantiateViewController(withIdentifier: "SelectionView") as? SelectionViewController
        selectionVC?.prefecture = selectedPrefecture
        // SwiftLint
        navigationController?.pushViewController(selectionVC!, animated: true)

    }

}
