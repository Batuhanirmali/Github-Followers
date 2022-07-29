//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Talha Batuhan Irmalı on 19.07.2022.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itenInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itenInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Git Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
