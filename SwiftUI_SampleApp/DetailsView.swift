//
//  DetailsView.swift
//  SwiftUI_SampleApp
//
//  Created by YUSUF KESKİN on 10.04.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenBook : BookModel
    
    var body: some View {
        VStack {
            Text("\(chosenBook.name) writer is \(chosenBook.writer)" )
            Image("color").resizable()
                .aspectRatio(contentMode: .fit).frame(height: 50)
            Text("All data here is just dummy data").padding(5)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenBook: murderOnTrain)
    }
}
