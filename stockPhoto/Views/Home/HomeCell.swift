//
//  HomeCell.swift
//  stockPhoto
//
//  Created by Diego Bustamante on 1/27/19.
//  Copyright © 2019 Diego Bustamante. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    let container : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let textContainer : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let imageView : UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        return view
    }()
    
    func addShadow() {
        let shadowView = UIView(frame: CGRect(x: container.frame.minX, y: container.frame.minY, width: frame.width-40, height: frame.height-40))
        shadowView.clipsToBounds = false
        shadowView.layer.shadowColor = UIColor(white: 0.0, alpha: 1.0).cgColor
        shadowView.layer.shadowOpacity = 0.3
        shadowView.layer.shadowOffset = CGSize(width: 5, height: 3)
        shadowView.layer.shadowRadius = 10
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: 10).cgPath
        container.addSubview(shadowView)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        // Add Shadow to container
        addSubview(container)
        container.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 20, paddingBottom: 20, paddingLeft: 20, paddingRight: 20, width: 0, height: 0)
        addShadow()
        
        container.addSubview(imageView)
        imageView.anchor(top: container.topAnchor, bottom: container.bottomAnchor, leading: container.leadingAnchor, trailing: container.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
        
        imageView.addSubview(textContainer)
        textContainer.anchor(top: nil, bottom: container.bottomAnchor, leading: container.leadingAnchor, trailing: container.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 100)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
