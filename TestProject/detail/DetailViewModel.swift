//
//  DetailViewModel.swift
//  TestProject
//
//  Created by ınv on 26.09.2023.
//

import Foundation

class DetailViewModel {
    
    let fullNameText: String
    let locationNameText: String
    let imageUrl: String
    let statusText: String
    let genderText: String
    let createdText: String
    
    init(result:Result){
        self.fullNameText = result.name
        self.locationNameText = result.location.name
        self.imageUrl = result.image
        self.statusText = result.status.rawValue
        self.genderText = result.gender.rawValue
        self.createdText = result.created
        
    }
    

    
}






