//
//  GFAvatarImageView.swift
//  GHfollowers
//
//  Created by Yazan Ghunaim on 1/31/24.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache
    let placeholderImage = UIImage(named: "avatar-placeholder")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func getImage(from urlString: String) {
        NetworkManager.shared.fetchImage(from: urlString) { image in
            if let image = image {
                DispatchQueue.main.async { self.image = image }
            } else { return }
        }
    }
}
