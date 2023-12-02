//
//  takeUrlImage.swift
//  TestProject
//
//  Created by ınv on 20.09.2023.
//

import Foundation
import UIKit


class TakeUrlImage {
    
    
    static func getUIimage(url:String, completion: @escaping (UIImage?) -> Void) {
        if let url = URL(string: url) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data, let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        completion(image)
                    }
                } else {
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                }
            }.resume()
        }
    }
}
