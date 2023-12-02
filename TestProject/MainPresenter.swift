//
//  MainPresenter.swift
//  TestProject
//
//  Created by ınv on 22.09.2023.
//

import Foundation

//protocol MainPresenterProtocol {
//    func fetchData()
//}
//
//class MainPresenter : MainPresenterProtocol{
//
//    let service = NetworkingClient()
//    var data: [Result] = []
//    var view: MainViewProtocol?
//
//    init(view: MainViewProtocol) {
//        self.view = view
//    }
//
//    
//    func fetchData() {
//        let urlString = "https://rickandmortyapi.com/api/character"
//        if let url = URL(string: urlString) {
//            service.execute(url: url) { response in
//                if let results = response?.results {
//                    DispatchQueue.main.async {
//                        self.view?.showResult(result: results)
//                        self.data = results
//                    }
//
//                }
//            }
//        }
//    }
//
//
//
//
////    func fetchImageData(url:String) {
////        TakeUrlImage.getUIimage(url: url) { result in
////            self.delegate?.getUIImage(image: result)
////        }
////    }
//
//}
