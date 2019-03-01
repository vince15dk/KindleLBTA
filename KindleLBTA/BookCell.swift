//
//  BookCell.swift
//  KindleLBTA
//
//  Created by Suk Joo Kim on 01/03/2019.
//  Copyright © 2019 Suk Joo Kim. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    var book: Book? {
        didSet {
            coverImageView.image = book?.image
            titleLabel.text = book?.title
            authorLable.text = book?.author
        }
    }
    
    private let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "steve_jobs")
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is the text for the title of our book inside of our cell"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let authorLable: UILabel = {
       let label = UILabel()
       label.text = "this is some author for the book that we have in this row"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(coverImageView)
        coverImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        coverImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        coverImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        coverImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20)
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -10).isActive = true
        addSubview(authorLable)
        authorLable.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        authorLable.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 8).isActive = true
        authorLable.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        authorLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
     
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
