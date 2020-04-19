//
//  ViewController.swift
//  LegoApp
//
//  Created by David Symhoven on 19.04.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func upButtonPressed(_ sender: UIButton) {
        let urlString = "http://192.168.4.1:5000/up"
        connectToRaspi(with: urlString)
    }
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        let urlString = "http://192.168.4.1:5000/"
        connectToRaspi(with: urlString)
    }
    @IBAction func downButtonPressed(_ sender: UIButton) {
        let urlString = "http://192.168.4.1:5000/down"
        connectToRaspi(with: urlString)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func connectToRaspi(with urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                print("received data: \(data)")
                let dataString = String(data: data, encoding: .utf8)
                print(dataString)
            }
        }
        .resume()
    }
}

