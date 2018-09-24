//
//  ViewController.swift
//  WithOrWithoutYou
//
//  Created by Ekramul Hoque on 24/9/18.
//  Copyright © 2018 Ekramul Hoque. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if traitCollection.forceTouchCapability == .available {
            registerForPreviewing(with: self, sourceView: view)
        } else {
            print("Not avilabel")
        }
    }

}

extension ViewController: UIViewControllerPreviewingDelegate {
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        let preivewView = storyboard?.instantiateViewController(withIdentifier: "viewForImage")
        return preivewView
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        let previewView = storyboard?.instantiateViewController(withIdentifier: "finalView")
        show(previewView!, sender: self)
    }
}
