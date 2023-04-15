//
//  DetailsView.swift
//  SwiftUI_SampleApp
//
//  Created by YUSUF KESKİN on 10.04.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenBook : BookModel
    @StateObject var catManager = CatAPIManager()
    
    var body: some View {
        
        VStack {
            Text("\(chosenBook.name) writer is \(chosenBook.writer)" )
            Image("color").resizable()
                .aspectRatio(contentMode: .fit).frame(height: 50)
            Text("For no reason, here some information about cats:").padding(10)
        }
        VStack {
            List(catManager.facts?.facts.sorted() ?? [String]() , id: \.self ){ fact in
            Text(fact)
            }
        }.onAppear {
            catManager.getCatFatcs()
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenBook: murderOnTrain)
    }
}
