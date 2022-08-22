//
//  Employee.swift
//  MVP
//
//  Created by Menna on 28/04/2022.
//

import Foundation
class Employee : Decodable{
    var status : String?
    var data : [Item]
    var message : String?
}


class Item : Decodable{
    var id : Int?
    var employee_name : String?
    var employee_salary : Int?
    var employee_age : Int?
    var profile_image : String?
}
