//
//  User.swift
//  HM2.3LoginApp
//
//  Created by Asya on 29.12.2021.
//

import UIKit

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Admin",
            password: "admin",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var about: String {
        "Всем привет, я Александр и мне уже 26 лет. У меня есть жена - она UX/UI дезайнер. А я 8 лет провел в армии."
    }
    
    var goal: String {
        "Я хочу стать отличным IOS Developer, и войти в IT. Готов к любым трудностям на своем пути, жизнь научила преодолевать разные препятствия, а обучение и саморазвитие - это только плюсы)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Alex", surname: "Lyakhov", image: "swift")
    }
}
