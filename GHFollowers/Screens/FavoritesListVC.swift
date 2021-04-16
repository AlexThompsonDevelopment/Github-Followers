//
//  FavoritesListVC.swift
//  GHFollowers
//
//  Created by Alexander Thompson on 12/4/21.
//

import UIKit

class FavoritesListVC: UIViewController {
    
    let tableView = UITableView()
    var favorites: [Follower] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewController()
        getFavorites()

       
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Favorites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configure tableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    func getFavorites() {
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                self.favorites = favorites
            case .failure(let error):
                break
            }
        }
    }
}

extension FavoritesListVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
}
