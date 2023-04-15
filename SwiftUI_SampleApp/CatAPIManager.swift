//
//  CatAPIManager.swift
//  SwiftUI_SampleApp
//
//  Created by YUSUF KESKİN on 15.04.2023.
//

import Foundation

class CatAPIManager : ObservableObject {
    
    @Published var facts : CatFactModel? = nil
    
    let url = URL(string: "https://meowfacts.herokuapp.com/?count=20")

    func getCatFatcs() {
        guard let url = url else { return }
        let request = URLRequest(url: url)
        
        let session = URLSession.shared
        session.dataTask(with: request) { data, _ , error in
            guard error == nil else { return }
            guard let data = data else { return }
            self.decode(data: data) { decodedFacts in
                print(decodedFacts)
                DispatchQueue.main.async {
                    self.facts = decodedFacts
                }
            }
        }.resume()
    }
    
    private func decode(data : Data, facts : @escaping(_ decodedFacts: CatFactModel) -> Void ) {
        let decoder = JSONDecoder()
        do {
            let result =  try decoder.decode(CatFactModel.self, from: data)
            facts(result)
        } catch (let error) {
            print(error)
        }
    }
}
