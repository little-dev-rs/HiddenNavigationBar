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
        
        title = "Avatar"
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
        print("Test1  scrollView.contentInset.top \(scrollView.contentInset.top)")
        scrollView.contentInset.top
    }
    
}
