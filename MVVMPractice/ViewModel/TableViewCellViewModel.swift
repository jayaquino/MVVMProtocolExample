//
//  TableViewCellViewModel.swift
//  MVVMPractice
//
//  Created by Nelson Aquino Jr  on 4/17/22.
//

import Foundation

protocol TableViewCellViewModelDelegate {
    func didFetchData(data: String)
    func didFailWithError(error: Error)
}

class TableViewCellViewModel:NSObject {
    
    var delegate: TableViewCellViewModelDelegate?
    
    func fetchData() {
        guard let url = URL(string:"https://random-data-api.com/api/name/random_name") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {return}
            
            let decoder = JSONDecoder()
            do {
                let decodedData = try decoder.decode(APIData.self, from: data)
                let name = decodedData.name
                let two_word_name = decodedData.two_word_name
                let four_word_name = decodedData.four_word_name
                let apiData = APIData(name: name, two_word_name: two_word_name, four_word_name: four_word_name)
                self.delegate?.didFetchData(data: apiData.name)
            } catch {
                self.delegate?.didFailWithError(error: error)
            }
        }
        task.resume()
        print("Fetching Data")
    }
}


