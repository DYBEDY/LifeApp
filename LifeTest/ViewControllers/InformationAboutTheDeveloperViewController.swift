//
//  InformationViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

class InformationAboutTheDeveloperViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var developerImage: UIImageView!
    @IBOutlet weak var youLivedLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var whyIOSDeveloperLabel: UILabel!
    
    //MARK: - Public properties
    var developer: Developer!
    var delegate: DaysViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        developerImage.layer.cornerRadius = 20
        developerImage.image = UIImage(named: developer.title)
        dateOfBirthLabel.text = developer.dateOfBirth
        youLivedLabel.text = delegate?.dateInterval(
            beginDate: developer.dateOfBirth,
            endDate: delegate?.getCurrentDate() ?? ""
        )
    }
}
