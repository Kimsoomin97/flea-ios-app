//
//  NetworkingManager.swift
//  Flea_Market
//
//  Created by 김수민 on 2022/03/29.
//

import Foundation

struct PostData: Encodable {
    let id: String
    let password: String
    let email: String
    let phone: String
    let nickname: String
    let address: String
}

struct MyData: Decodable {
    let message: [Example]
}

struct Example: Decodable {
    let value: String
    let msg: String
    let param: String
    let location: String
}

final class NetworkingManager {
    private let session: URLSession
    let encoder = JSONEncoder()
    
    static let shard = NetworkingManager()
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func postNetworking() {
        guard let url = URL(string: "http://localhost:3000/member/join") else {
            return
        }
        let postData = PostData(id: "lsj16632", password: "lsj2486512!", email: "lsj16632@naver.com", phone: "010-1234-5678", nickname: "Dfsaf", address: "DFasdfsa")
        guard let uploadData = try? JSONEncoder().encode(postData)
            else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-type")
        
        session.uploadTask(with: request, from: uploadData) { data, response, error in
            if let data = data {
                print("data = \(data)")
            }
            
            do{
                let dt = try JSONDecoder().decode(MyData.self, from: data!)
                print("dt = \(dt)")
            }
            catch {
                print("decode error")
            }
            
            if let error = error {
                print("error = \(error)")
            }
            
            print("response = \(response)")
        }.resume()
    }
}
