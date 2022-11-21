//
//  MainViewController.swift
//  CollorizedApp
//
//  Created by Pavel Lazarev Macbook on 21.11.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColor(_ color: UIColor)
}

final class MainViewController: UIViewController {

// MARK: - Override Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.viewColor = view.backgroundColor
    }

}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
