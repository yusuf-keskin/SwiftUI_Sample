//
//  ContentView.swift
//  SwiftUI_SampleApp
//
//  Created by YUSUF KESKİN on 10.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(books) { book in
                    Section(header: Text(book.title)) {
                        ForEach(book.books) { book in
                            NavigationLink(destination: DetailsView(chosenBook: book)) {
                                Text(book.name)
                            }
                        }
                    }
                }
            }
        }.navigationBarTitle("Books")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
