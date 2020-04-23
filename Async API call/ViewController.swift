//
//  ViewController.swift
//  Async API call
//
//  Created by Mohit Agrawal on 22/04/20.
//  Copyright © 2020 Mohit Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData() {
        let urlString = "https://jsonplaceholder.typicode.com/todos/1"
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, res, error) in
    
            do {
                let todoDetails = try JSONDecoder().decode(Todo.self, from: data!)
                DispatchQueue.main.async {
                    self.titleLable.text = todoDetails.title
                }
            } catch {}
        }.resume()
    }
}

