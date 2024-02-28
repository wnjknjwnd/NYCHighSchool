//
//  SchoolViewModel.swift
//  NYCHighSchools
//
//  Created by Amulya Gangam on 2/28/24.
//

import Foundation

class SchoolViewModel: ObservableObject {
    @Published var schools = [School]()
    
    func fetchSchools() {
        let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")!
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data
            else { return }
            
            if let decodedData = try? JSONDecoder().decode([School].self, from: data) {
                DispatchQueue.main.async {
                    self.schools = decodedData
                }
            }
            
        }.resume()
    }
    
}
