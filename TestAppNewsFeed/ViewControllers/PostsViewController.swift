//
//  ViewController.swift
//  TestAppNewsFeed
//
//  Created by Иван on 04.09.2023.
//
import UIKit

final class PostsViewController: UIViewController {
    // MARK: - Private IBOutlets
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Private properties
    private let cellID = "postsTableViewCell"
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "PostsTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension PostsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let postsCell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! PostsTableViewCell
        return postsCell
    }
}



