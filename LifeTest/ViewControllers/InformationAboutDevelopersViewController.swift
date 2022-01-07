//
//  InformationViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

class InformationAboutDevelopersViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var developerImage: UIImageView!
    @IBOutlet weak var youLivedLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    
    //MARK: - Public properties
    var developer: Developer!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
