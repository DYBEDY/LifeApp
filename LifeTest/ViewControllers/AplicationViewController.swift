//
//  AplicationViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

class AplicationViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var informationLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        informationLabel.text = """
In this application you can find out how long you have lived and how much you still want to live
"""
    }
}
