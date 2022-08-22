//
//  NetworkApi.swift
//  MVP
//
//  Created by Menna on 28/04/2022.
//

import Foundation
class NetworkApi{
    
    func startConnectionWithUrlSession(completionHandler: @escaping (Employee?) -> Void){
        
        let url = URL(string: "https://dummy.restapiexample.com/api/v1/employees")
        guard let newUrl = url else{return}
        let urlSession = URLSession(configuration: .default)
        let request = URLRequest(url: newUrl)
        let task = urlSession.dataTask(with: request) { data, response, error in
            
            guard let myData = data else { return }
            do{
                let json = try JSONDecoder().decode(Employee.self, from: myData)
               completionHandler(json)
            }catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
}
