//
//  ViewController.swift
//  HiddenNavigationBar
//

import UIKit

class ViewController: UIViewController {

    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(NavigationCell.self, forCellReuseIdentifier: "navigationCell")
        tableView.frame = view.bounds
        navigationController?.navigationBar.prefersLargeTitles = false
    }

}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeueReusableCell(withIdentifier: "navigationCell", for: indexPath) as! NavigationCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y > -44 {
            title = "Avatar"
        } else {
            title = ""
        }
    }
    
}
