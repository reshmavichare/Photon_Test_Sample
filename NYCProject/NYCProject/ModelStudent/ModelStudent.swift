//
//  ModelStudent.swift
//  NYCProject
//
//  Created by Reshma Dhomse on 2/16/24.
//

import Foundation
import SwiftUI

struct ModelStudent : Identifiable,Decodable {
    var id = UUID()
    let schoolname :String
    let dbn: String
    let overviewparagraph :String
//    let academicopportunities1 :String
    
    enum CodingKeys : String, CodingKey {
        case dbn
        case  schoolname = "school_name"
         case  overviewparagraph = "overview_paragraph"
       // case academicopportunities1
        
    }
}

