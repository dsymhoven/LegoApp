//
//  RaspiService.swift
//  LegoApp
//
//  Created by David Symhoven on 19.04.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import Foundation

enum Command: String {
    case up = "up"
    case down = "down"
    case stop = ""
}

class RaspiService {
    private let baseUrl = "http://192.168.4.1:5000/"

    func send(command: Command) {
        guard let url = URL(string: baseUrl + command.rawValue) else {
            print("ERROR: url can not be created from baseUrl: \(baseUrl) and command: \(command.rawValue)")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                print("received data: \(data)")
                let dataString = String(data: data, encoding: .utf8)
                print(dataString?.description ?? "")
            }
        }
        .resume()
    }
}
