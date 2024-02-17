//
//  FetchDataViewModel.swift
//  NYCProject
//
//  Created by Reshma Dhomse on 2/16/24.
//

import Foundation
protocol fetchData {
    func fetchApi()
}


class FetchDataViewModel : fetchData ,ObservableObject {
    @Published var model : [ModelStudent] =  []
    @Published var isLoading = false
    
    func fetchApi() {
       //isLoading = true
        let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")
        let request  = URLRequest(url: url!)
        URLSession.shared.dataTask(with: request) { [weak self](data,response,error) in
         
        
            DispatchQueue.main.async {
                
                let decoder =  JSONDecoder()
                do {
                    //self?.isLoading = false
                let response = try decoder.decode([ModelStudent].self, from: data!)
                    self?.model =  response
                    
                }
                catch let error {
                    print("eror show\(error)")
                }
            }
            
            
        } .resume()
        
    }
}
