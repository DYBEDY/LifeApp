//
//  Developer.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import Foundation

struct Developer {
    let fullName: String
    let work: String
    let dateOfBirth: String
    let whyIOSDeveloper: String
    
    var title: String {
        "\(fullName) - \(work)"
    }
}

extension Developer {
    static func getDeveloperList() -> [Developer] {
        [
            Developer(fullName: "Diana Ovechkina",
                      work: "Developer",
                      dateOfBirth: "07.03.2001",
                      whyIOSDeveloper: "Всегда нравилась политика Apple. Их видение уникально. Хочу создавать удобные приложения для пользователей продукции Apple и также пользоваться тем, что сделаю сама."),
            Developer(fullName: "Anna Mel",
                      work: "Developer",
                      dateOfBirth: "05.09.1992",
                      whyIOSDeveloper: "Считаю направление мобильной разработки очень перспективным: бизнесу нужны приложения и быстрая коммуникация с покупателями. Как фанат продукции Apple, остановилась именно на разработке под IOS."),
            Developer(fullName: "Roma",
                      work: "Developer",
                      dateOfBirth: "10.05.1994",
                      whyIOSDeveloper: "Я выбрал IOS разработку, так как хочу делать классные и полезные приложения для людей. Мне очень нравится философия Apple и их продукция, отчего работать над приложениям становится вразы приятнее. В скором будущем я планирую эмигрировать в США, считаю , что было бы круто иметь за спиной крутую и востребованную профессию."),
            Developer(fullName: "Elisei Mishchenko",
                      work: "Developer",
                      dateOfBirth: "10.10.2007",
                      whyIOSDeveloper: "Я хочу выучится на IOS разработчика, потому что мне нравиться разрабатывать продукцию для Apple в будущем я мечтаю создать своё приложение и открыть компанию, которая будет поддерживать это приложение.")
        ]
    }
}
