//
//  TabBarViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

protocol DaysViewControllerDelegate {
    func dateInterval(beginDate: String, endDate: String) -> String

    func getCurrentDate() -> String
}

class TabBarViewController: UITabBarController {
    var birthday: UITextField!
    var finish: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseController()
    }
    
    private func chooseController() {
        guard let viewControllers = self.viewControllers else {return}
        viewControllers.forEach {
            if let livedDaysVC = $0 as? LivedDaysViewController {
                livedDaysVC.delegate = self
                livedDaysVC.birthDate = birthday.text
            }
            else if let futureDaysVC = $0 as? FutureDaysViewController {
                futureDaysVC.delegate = self
                futureDaysVC.deathDate = finish.text
            }
        }
    }
    
    
}


extension TabBarViewController: DaysViewControllerDelegate {
    
    func dateInterval(beginDate: String, endDate: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"

        guard let begin = dateFormatter.date(from: beginDate) else { return "" }
        guard let end = dateFormatter.date(from: endDate) else { return "" }

        let dateInterval = Calendar.current.dateComponents([.day], from: begin, to: end)

        guard let days = dateInterval.day else {return ""}

        let resultDateInterval = " \(days) дней"
        
        return resultDateInterval
    }
    
    func getCurrentDate() -> String {
        let currentDate = DateFormatter()
        currentDate.dateFormat = "dd.MM.yyyy"
        
        return currentDate.string(from: Date())
    }
}
