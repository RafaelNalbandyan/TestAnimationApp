//
//  ViewController.swift
//  TestAnimationApp
//
//  Created by Rafael Nalbandyan on 3/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.changeSize()
        }
    }
    
    private func changeSize() {
        UIView.animate(withDuration: 5, animations: { () -> Void in
            self.viewWidthConstraint.constant *= 2
            self.view.layoutIfNeeded()
        },
        completion: { finished in
            print("resizing completed")
        })
        self.mainView.rotate()
    }
}

