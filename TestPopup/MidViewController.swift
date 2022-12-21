//
//  MidViewController.swift
//  TestPopup
//
//  Created by Viacheslav Pryimachenko on 20.12.2022.
//

import UIKit

class MidViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        (self.tabBarController as? TabBarViewController)?.hideMiniBar()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // since tab bar is hidden, self.tabbarController will return nil

        (UIApplication.shared.windows.first(where: {$0.isKeyWindow})?.rootViewController as? TabBarViewController)?.showMiniBar()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        // If I call presentPopup here, then it will work, but with a slight delay
//        DispatchQueue.main.async {
//            (UIApplication.shared.windows.first(where: {$0.isKeyWindow})?.rootViewController as? TabBarViewController)?.showMiniBar()
//        }
    }

    @IBAction private func showTapped() {
        (self.tabBarController as? TabBarViewController)?.showMiniBar()
    }

    @IBAction private func hideTapped() {
        (self.tabBarController as? TabBarViewController)?.hideMiniBar()
    }
    
}
