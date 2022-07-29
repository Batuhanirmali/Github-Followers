//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Talha Batuhan Irmalı on 19.07.2022.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itenInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itenInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
