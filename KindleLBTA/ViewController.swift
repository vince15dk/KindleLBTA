//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Suk Joo Kim on 01/03/2019.
//  Copyright © 2019 Suk Joo Kim. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    
    init(title:String, author:String) {
        self.title = title
        self.author = author
    }
}

class Page {
    let number : Int
    let text : String
    
    init(number: Int, text:String){
        self.number = number
        self.text = text
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 1, text: "This is text for second page")
        
        let book = Book(title: "Steve jobs", author: "Walter Lsaacson")
        print(book.title, book.author)
        print("Title: \(book.title), aUTHOR: \(book.author)")
        
    }


}

