//
//  TabBarViewController.swift
//  TestPopup
//
//  Created by Viacheslav Pryimachenko on 20.12.2022.
//

import UIKit
import LNPopupController

final class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
        tabBar.backgroundColor = .white
    }

    func showMiniBar() {
        let storyboard = UIStoryboard(name: "Popup", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PopupViewController")

        let popupBarAppearance = LNPopupBarAppearance()

        popupBarAppearance.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]

        popupBarAppearance.subtitleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .light),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]

        popupBarAppearance.backgroundColor = .black
        popupBarAppearance.marqueeScrollEnabled = true
        popupBar.standardAppearance = popupBarAppearance

        popupBar.inheritsAppearanceFromDockingView = false
        popupBar.standardAppearance.backgroundEffect = UIBlurEffect(style: .prominent)
        popupPresentationDelegate = self

        popupBar.barStyle = .compact
        popupInteractionStyle = .drag
        popupBar.progressViewStyle = .top
        popupContentView.popupCloseButtonStyle = .chevron
        shouldExtendPopupBarUnderSafeArea = true
        presentPopupBar(withContentViewController: vc, animated: false)
    }

    func hideMiniBar() {
        self.dismissPopupBar(animated: false)
    }

//    override var bottomDockingViewForPopupBar: UIView? {
//        return self.tabBar
//    }
//
//    override var defaultFrameForBottomDockingView: CGRect {
//        var bottomViewFrame = tabBar.frame
//
//        if self.tabBar.isHidden {
//            tabBar.frame.origin = CGPoint(x: bottomViewFrame.origin.x, y: view.bounds.height)
//        } else {
//            tabBar.frame.origin = CGPoint(x: bottomViewFrame.origin.x, y: view.bounds.height - bottomViewFrame.height)
//        }
//
//        return bottomViewFrame
//    }

}

extension TabBarViewController: LNPopupPresentationDelegate {
    func popupPresentationControllerWillPresentPopupBar(_ popupPresentationController: UIViewController, animated: Bool) {
        debugPrint("")
    }

    func popupPresentationControllerDidPresentPopupBar(_ popupPresentationController: UIViewController, animated: Bool) {
        debugPrint("")
    }

    func popupPresentationControllerWillDismissPopupBar(_ popupPresentationController: UIViewController, animated: Bool) {
        debugPrint("")
    }

    func popupPresentationControllerDidDismissPopupBar(_ popupPresentationController: UIViewController, animated: Bool) {
        debugPrint("")
    }

    func popupPresentationController(_ popupPresentationController: UIViewController, willOpenPopupWithContentController popupContentController: UIViewController, animated: Bool) {
        debugPrint("")
    }

    func popupPresentationController(_ popupPresentationController: UIViewController, didOpenPopupWithContentController popupContentController: UIViewController, animated: Bool) {
        debugPrint("")
    }

    func popupPresentationController(_ popupPresentationController: UIViewController, willClosePopupWithContentController popupContentController: UIViewController, animated: Bool) {
        debugPrint("")
    }

    func popupPresentationController(_ popupPresentationController: UIViewController, didClosePopupWithContentController popupContentController: UIViewController, animated: Bool) {
        debugPrint("")
    }
}
