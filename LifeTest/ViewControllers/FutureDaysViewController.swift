//
//  FutureDaysViewController.swift
//  LifeTest
//
//  Created by Roman on 08.01.2022.
//

import UIKit

class FutureDaysViewController: UIViewController {

    @IBOutlet var todayLabel: UILabel!
    @IBOutlet var futureDaysLabel: UILabel!
    
    var delegate: DaysViewControllerDelegate!
    var deathDate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todayLabel.text = "Сегодня\n \(delegate?.getCurrentDate() ?? "")"
        
        futureDaysLabel.layer.cornerRadius = 15
        futureDaysLabel.layer.masksToBounds = true
        futureDaysLabel.text = "\n У тебя осталось \n \(delegate?.dateInterval(beginDate: delegate?.getCurrentDate() ?? "", endDate: deathDate) ?? "")\n"
    }
}
