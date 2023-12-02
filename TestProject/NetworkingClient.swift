//
//  NetworkingClient.swift
//  TestProject
//
//  Created by ınv on 18.09.2023.
//

import Foundation
import Alamofire

class NetworkingClient {
    
    func execute(url: URL, completion: @escaping (Model?) -> Void) {
        AF.request(url).responseDecodable(of: Model.self , completionHandler: { response in
            if let model = response.value {
                        completion(model)
                    } else {
                        completion(nil)
                    }
        })
    }
    
}
