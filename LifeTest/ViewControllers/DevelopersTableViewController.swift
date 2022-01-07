//
//  DevelopersTableViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

class DevelopersTableViewController: UITableViewController {
    //MARK: - Private properties
    private var developerList = Developer.getDeveloperList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developerList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let developer = developerList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = developer.fullName
        content.secondaryText = developer.work
        content.image = UIImage(named: developer.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let informationAboutTheDeveloperVC = segue.destination as? InformationAboutDevelopersViewController else { return }
        informationAboutTheDeveloperVC.developer = sender as? Developer
    }
}
