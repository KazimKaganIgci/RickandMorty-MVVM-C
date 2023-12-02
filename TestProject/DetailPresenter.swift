//
//  DetailPresenter.swift
//  TestProject
//
//  Created by ınv on 22.09.2023.
//
//
//import Foundation
//import UIKit
//
//protocol DetailPresenterDelegate: AnyObject {
//    func getResults(result: ConfigureDetailModel)
//    func getUIImage(image: UIImage?)
//}
//
//class DetailPresenter {
//    
//    weak var delegate :DetailPresenterDelegate?
//    var result:Result?
//    init(delegate: DetailPresenterDelegate,result:Result) {
//        self.delegate = delegate
//        self.result = result
//    }
//    
//    func getNewResults() {
//        if let data = self.result {
//            self.delegate?.getResults(result: ConfigureDetailModel(name: "Ad: \(data.name)", status: "Status: \(data.status)", gender: "Gender: \(data.gender)", location: "Location \(data.location.name)", image: data.image, created: "Created: \(data.created)"))        }
//        
//        
//    }
//    
////        func fetchImageData(url:String) {
////            TakeUrlImage.getUIimage(url: url) { result in
////                self.delegate?.getUIImage(image: result)
////            }
////        }
//
//    
//}
