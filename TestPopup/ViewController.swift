//
//  ViewController.swift
//  TestPopup
//
//  Created by Viacheslav Pryimachenko on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func showBarTapped() {
        guard let tabBarController = tabBarController as? TabBarViewController else { return }
        tabBarController.showMiniBar()
    }

    @IBAction private func hideBarTapped() {
        guard let tabBarController = tabBarController as? TabBarViewController else { return }
        tabBarController.hideMiniBar()
    }

    @IBAction private func nextTapped() {
        (self.tabBarController as? TabBarViewController)?.hideMiniBar()
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "MidViewController")
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

