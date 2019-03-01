//
//  BookCell.swift
//  KindleLBTA
//
//  Created by Suk Joo Kim on 01/03/2019.
//  Copyright © 2019 Suk Joo Kim. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
       backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
