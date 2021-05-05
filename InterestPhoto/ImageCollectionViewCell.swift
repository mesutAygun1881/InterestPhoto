//
//  ImageCollectionViewCell.swift
//  InterestPhoto
//
//  Created by Mesut Aygün on 5.05.2021.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    static let identifier = "ImageeCollectionViewCell"
    
    private let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
        
    }()
    override init(frame : CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    func configure(with url : String) {
        
    }
}
