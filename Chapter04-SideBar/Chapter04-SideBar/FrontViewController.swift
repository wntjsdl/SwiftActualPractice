//
//  FrontViewController.swift
//  Chapter04-SideBar
//
//  Created by JuSun Kang on 2022/03/15.
//

import UIKit

class FrontViewController: UIViewController {
    
    @IBOutlet weak var sideBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let revealVC = self.revealViewController() {
            self.sideBarButton.target = revealVC
            self.sideBarButton.action = #selector(revealVC.revealToggle(_:))
        }
    }
}
