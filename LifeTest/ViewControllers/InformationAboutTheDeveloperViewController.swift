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
    
    //MARK: - Public properties
    var developer: Developer!

    override func viewDidLoad() {
        super.viewDidLoad()
        developerImage.layer.cornerRadius = 20
        developerImage.image = UIImage(named: developer.title)
        dateOfBirthLabel.text = developer.dateOfBirth
        
    }
    

    

}
