//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Suk Joo Kim on 01/03/2019.
//  Copyright © 2019 Suk Joo Kim. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var books : [Book]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Kindle"
        view.backgroundColor = .red
        setupBooks()
    }
    
    
    func setupBooks() {
        
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "This is text for second page")
        
        let pages = [page1, page2]
        
        let book1 = Book(title: "Steve jobs", author: "Walter Lsaacson", pages: pages  )
        
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "first page"),Page(number: 2, text: "second page"),
            Page(number: 3, text: "third page"),
            Page(number: 4, text: "fourth page")
            ])
        
        self.books = [book1, book2]
        
        guard let bookCollection = self.books else { return }
        
        for book in bookCollection {
            print("Title : \(book.title) Author: \(book.author)");
            for page in book.pages {
                print("Number: \(page.number) Text: \(page.text)")
            }
        }
        
        //        if let unwrappedBooks = self.books {
        //            for book in unwrappedBooks {
        //                print("Title : \(book.title) Author: \(book.author)");
        //                for page in book.pages {
        //                    print("Number: \(page.number) Text: \(page.text)")
        //                }
        //            }
        //
        //        }
        
    }

}

