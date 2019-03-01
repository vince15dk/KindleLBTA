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
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "Kindle"
        
        setupBooks()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let layout = UICollectionViewFlowLayout()
        let bookPageController = BookPageController(collectionViewLayout: layout)
        let navController = UINavigationController(rootViewController: bookPageController)
        present(navController, animated: true, completion: nil)
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! BookCell
       
        let book = books?[indexPath.row]
        cell.book = book
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
              return count
        }
        return 0

    }
    
    
    func setupBooks() {
        
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "This is text for second page")
        
        let pages = [page1, page2]
        
        let book1 = Book(title: "Steve jobs", author: "Walter Lsaacson", pages: pages, image: #imageLiteral(resourceName: "steve_jobs")  )
        
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "first page"),Page(number: 2, text: "second page"),
            Page(number: 3, text: "third page"),
            Page(number: 4, text: "fourth page")
            ], image: #imageLiteral(resourceName: "bill_gates"))
        
        self.books = [book1, book2]
        
        
    }

}

