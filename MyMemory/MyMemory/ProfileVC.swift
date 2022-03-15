//
//  ProfileVC.swift
//  MyMemory
//
//  Created by KJS on 2022/03/15.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let profileImage = UIImageView()
    let tv = UITableView()
    
    override func viewDidLoad() {
        navigationItem.title = "프로필"
        
        let backBtn = UIBarButtonItem(title: "닫기", style: .plain, target: self, action: #selector(close(_:)))
        navigationItem.leftBarButtonItem = backBtn
        
        // add profileImage
        let image = UIImage(named: "account.jpg")
        
        profileImage.image = image
        profileImage.frame.size = CGSize(width: 100, height: 100)
        profileImage.center = CGPoint(x: view.frame.width / 2, y: 130)
        
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        profileImage.layer.borderWidth = 0
        profileImage.layer.masksToBounds = true
        
        view.addSubview(profileImage)
        
        tv.frame = CGRect(x: 0, y: profileImage.frame.origin.y + profileImage.frame.size.height + 20, width: view.frame.width, height: 100)
        tv.dataSource = self
        tv.delegate = self
        
        view.addSubview(self.tv)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        
        cell.textLabel?.font = UIFont.systemFont(ofSize: 14)
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 13)
        cell.accessoryType = .disclosureIndicator
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "이름"
            cell.detailTextLabel?.text = "꼼꼼한재은 씨"
        case 1:
            cell.textLabel?.text = "계정"
            cell.detailTextLabel?.text = "sqlpro@naver.com"
        default:
        ()
        }
        return cell
    }
    
    @objc func close(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
