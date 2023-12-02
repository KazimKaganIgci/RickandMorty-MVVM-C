//
//  MainViewModel.swift
//  TestProject
//
//  Created by ınv on 26.09.2023.
//

import Foundation

//protocol CoordinatorProtocol: AnyObject {
//    func navigateToDetail(result: Result)
//}

class MainViewModel {
    
    
    //var result: [Result] = []
    weak var coordinator: MainCoordinator?
    var results = [Result]()
    var status = "Yükleniyor"
    let service = NetworkingClient()
    let characterListItemViewModels = Observable<[CharacterListItemModel]>([])
    let pageChangeObservable = Observable<Result>(nil)
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        
        fetchData()
    }
    
    private func fetchData() {
        let urlString = "https://rickandmortyapi.com/api/character"
        if let url = URL(string: urlString) {
            service.execute(url: url) { [weak self] response in
                if let results = response?.results {
                    
                    self?.results = results
                    var characterListItemViewModels = [CharacterListItemModel]()
                    for item in results {
                        let newVM = CharacterListItemModel(fullNameText: item.name, locationNameText: item.location.name, imageUrl: item.image)
                        characterListItemViewModels.append(newVM)
                    }
                    self?.characterListItemViewModels.value = characterListItemViewModels
                                    }
            }
        }
    }
    func onTapCharacter(index:Int) {
        self.coordinator?.navigateToDetail(result: self.results[index])

        
    }
    
}

class Observable<T> {
    
    var value: T? {
        didSet {
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }
    
    init( _ value: T?) {
        self.value = value
    }
    
    private var listener: ((T?) -> Void)?
    
    func bind( _ listener: @escaping ((T?) -> Void)) {
        listener(value)
        self.listener = listener
    }
}

struct CharacterListItemModel {

    let fullNameText: String
    let locationNameText: String
    let imageUrl: String
    
}



