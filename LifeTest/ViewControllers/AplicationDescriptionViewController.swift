//
//  AplicationViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

class AplicationDescriptionViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var informationLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        informationLabel.text = """
Yours Life - твой личный помощник в жизни.
Отслеживай прожитые тобой дни, смотри, сколько тебе осталось, ставь цели
и достигай их. Цель приложения - показать человеку,
что он не вечен и его час когда-нибудь прийдёт.
Осозновая это, ты сможешь более продуктивно распоряжаться своим временем и начнёшь ценить каждый отведённый тебе час.
Мы искренне верим, что наше приложение поможет тебе в планировании твоей будущей жизни. Будь счастлив, иди только 
вперёд и никогда не стой на месте, ведь ты обречён на успех!
"""
    }
}
