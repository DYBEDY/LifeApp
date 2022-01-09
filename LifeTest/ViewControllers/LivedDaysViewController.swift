//
//  LivedDaysViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

class LivedDaysViewController: UIViewController {

    @IBOutlet var todayLabel: UILabel!
    @IBOutlet var passedDaysLabel: UILabel!
    
    var delegate: DaysViewControllerDelegate!
    var birthDate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        todayLabel.text = "Сегодня\n \(delegate?.getCurrentDate() ?? "")"
        
        passedDaysLabel.layer.cornerRadius = 15
        passedDaysLabel.layer.masksToBounds = true
        passedDaysLabel.text = "\n Ты прожил(а) уже \n\(delegate?.dateInterval(beginDate: birthDate, endDate: delegate?.getCurrentDate() ?? "") ?? "")\n"
    }
   
}
