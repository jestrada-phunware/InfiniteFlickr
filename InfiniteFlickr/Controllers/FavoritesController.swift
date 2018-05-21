//
//  FavoritesController.swift
//  InfiniteFlickr
//
//  Created by Julio Estrada on 4/20/18.
//  Copyright © 2018 Julio Estrada. All rights reserved.
//

import UIKit

class FavoritesController: UITableViewController {
    
    var photos = [Photo]()
    var cellId = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBar()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Favorites"
        let rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissFavorites(_:)))
        navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
    @objc private func dismissFavorites(_ sender: UIViewController) {
//        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)

        cell.textLabel?.text = "Favorite"

        return cell
    }
}
