//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Talha Batuhan Irmalı on 21.07.2022.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNC(), createFavoritesNC()]

    }
    
    func createSearchNC() -> UIViewController {
        let searchVc = SearchVC()
        searchVc.title = "Search"
        searchVc.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVc)
    }

    func createFavoritesNC() -> UINavigationController {
        let favoritesListVc = FavoritesListVC()
        favoritesListVc.title = "Favorites"
        favoritesListVc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVc)
    }
}
