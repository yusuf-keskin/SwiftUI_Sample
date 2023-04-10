//
//  Data.swift
//  SwiftUI_SampleApp
//
//  Created by YUSUF KESKİN on 10.04.2023.
//

import Foundation

struct BookModel : Identifiable {
    var id = UUID()
    var name : String
    var writer : String

}

struct ReadingModel : Identifiable {
    var id = UUID()
    var title : String
    var genre : String
    var books : [BookModel]
}



let murderOnTrain = BookModel(name: "Murder on train", writer: "Agatha Christie")
let bakerStreetMurder = BookModel(name: "Some Sherlock Holmes", writer: "A.C. Doyle")

let wheelOfTime = BookModel(name: "Wheel of time", writer: "Robert Jordan")
let stormLightArchives = BookModel(name:"Storm Light Archives" , writer: "Brandon Sanderson")


let crimeBooks = ReadingModel(title: "Crime ", genre: "Crime", books: [murderOnTrain, bakerStreetMurder])
let fantasyBooks = ReadingModel(title: "Fantasy Books", genre: "Fantasy", books: [wheelOfTime,stormLightArchives])

let books = [crimeBooks,fantasyBooks]
