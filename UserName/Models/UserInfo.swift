//
//  UserInfo.swift
//  UserName
//
//  Created by Pandos on 07.02.2021.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
    
    //Метод создания экземпляра модели
    static func getUserData() -> User {
        User(userName: "Pavlov",
             password: "Dima",
             person: Person(contactInfo: ContactInfo(city: Kolomna()))
        )
    }
}

struct Person {
    let name = "Дима Павлов"
    let dateBirth = "14.07.1991"
    let hobby = "billiard"
    
    let contactInfo: ContactInfo
}

struct ContactInfo {
    let email = "perr07@yandex.ru"
    let phoneNumber = "89166801991"
    let country = "Russia"
    let city: Kolomna
}

struct Kolomna {
    let gorod = "Коломна"
}
