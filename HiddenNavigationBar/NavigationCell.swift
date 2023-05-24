//
//  ViewController.swift
//  HiddenNavigationBar
//

import UIKit
import TinyConstraints

class NavigationCell: UITableViewCell {

    var navigationLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Avatar"
        return label
    }()
    
    var checkMarkImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(systemName: "person.crop.circle.fill") ?? UIImage()
        imageView.image = image.withTintColor(.gray, renderingMode: .alwaysOriginal)
        
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        contentView.addSubview(navigationLabel)
        navigationLabel.widthToSuperview(multiplier: 0.5)
        navigationLabel.leadingToSuperview(offset: 20)
        navigationLabel.heightToSuperview()
        navigationLabel.centerYToSuperview()
        
        contentView.addSubview(checkMarkImage)
        checkMarkImage.width(36)
        checkMarkImage.height(36)
        checkMarkImage.trailingToSuperview(offset: 20)
        checkMarkImage.centerYToSuperview()
    }
    
}

