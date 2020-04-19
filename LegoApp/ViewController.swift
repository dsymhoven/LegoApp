//
//  ViewController.swift
//  LegoApp
//
//  Created by David Symhoven on 19.04.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let raspiService = RaspiService()

    @IBAction func upButtonPressed(_ sender: UIButton) {
        raspiService.send(command: .up)
    }
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        raspiService.send(command: .stop)
    }
    @IBAction func downButtonPressed(_ sender: UIButton) {
        raspiService.send(command: .down)
    }
}

