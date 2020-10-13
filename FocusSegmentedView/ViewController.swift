//
//  ViewController.swift
//  FocusSegmentedView
//
//  Created by Aleksandr Medvedev on 10/7/20.
//  Copyright © 2020 Aleksandr Medvedev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    var scrollViewFocusSystem: UIFocusSystem?
    var segmentedControlFocusSystem: UIFocusSystem?

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(didUpdateFocusNotification(_:)), name: UIFocusSystem.didUpdateNotification, object: nil)

    }

    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        super.didUpdateFocus(in: context, with: coordinator)
        print(String(describing: context.nextFocusedView))
    }

    @objc private func didUpdateFocusNotification(_ notification: Notification) {
        print(String(describing: notification.userInfo))
    }

}

