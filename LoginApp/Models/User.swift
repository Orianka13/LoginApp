//
//  User.swift
//  LoginApp
//
//  Created by Олеся Егорова on 30.11.2022.
//


struct User {
    let userName: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let title: [String]
    let descriptions: [String]
    let photos: [String]
    let experience: String
    let psText: String
    let hobbies: [Hobby]
}

struct Hobby {
    let hobby: String
    let description: String
    let photo: String
}

extension User {
    static func getUser() -> User {
        User(userName: "User", password: "123",
             person: Person(name: "Olesia Egorova",
                            title: ["About me", "Hometown", "New life"],
                            descriptions: ["Hi! I am Olesia Egorova!",
                                           "I was born in a small town Orsk. There is a beautifull nature (if you like steppe)",
                                           "10 years i lived in St. Petersburg and i love it so much. But now i moved to Tbilisi. I am a little bit sad about it but i believe in the best feauture!"],
                            photos: ["me", "hometown", "newLife"],
                            experience: "I've been developing on iOS for over a year. Before that, I tried to learn Java - but, unfortunately, it didn’t work. \nIn general, I had nothing to do with programming (except for my school passion for web design☺️). \nI am set up in this matter as seriously as possible - I want to make the development of mobile applications my profession. I see the goal and see no obstacles! 👍",
                            psText: "P.S To be honest, I just always considered programmers to be people with super power. You are doing some magic. 😅 I want it too😑",
                            hobbies: [Hobby(hobby: "DIY", description: "I like to make different things with my hands: scarves, hats, brooches, wreaths, jewelry, etc. This is my antistress.", photo: "diy"),
                                      Hobby(hobby: "Bicycling", description: "I have a small folding bike - I traveled all the forests of Vsevolozhsk on it 😁😁", photo: "bycicle"),
                                      Hobby(hobby: "Walking", description: "Madly in love with walks, travel and adventure👍) I hope now there will be more of this!", photo: "adventure")]))
    }
}
