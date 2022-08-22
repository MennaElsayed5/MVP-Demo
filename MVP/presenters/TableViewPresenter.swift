//
//  TableViewPresenter.swift
//  MVP
//
//  Created by Menna on 28/04/2022.
//

import Foundation

class TableViewPresenter{
    
    var network : NetworkApi
    var displayMyData : DisplayData
    
    init(network:NetworkApi, displayMyData:DisplayData) {
        self.network = network
        self.displayMyData = displayMyData
    }
    
    func getData(){
        network.startConnectionWithUrlSession { [self] response in
            displayMyData.displayData(employees: response?.data ?? [])
        }
    }
}

