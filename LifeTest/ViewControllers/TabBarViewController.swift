//
//  TabBarViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    var birthday: UITextField!
    var finish: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseController()
        
    }
    
    private func chooseController() {
            guard let viewControllers = self.viewControllers else { return }
            for controller in viewControllers {
                if let livedDaysVC = controller as? LivedDaysViewController {
                    livedDaysVC.birthDate = birthday.text
                }
            

   
}
    }
}
