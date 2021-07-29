//
//  SecondViewController.swift
//  Chapter03-TabBar
//
//  Created by JuSun Kang on 2021/07/30.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "두번째 탭"
        title.textColor = .red // 텍스트는 빨간색으로
        title.textAlignment = .center // 레이블 내에서 중앙 정렬로
        title.font = UIFont.boldSystemFont(ofSize: 14) // 폰트는 System Font, 14pt
        
        // 3) 콘텐츠 내용에 맞게 레이블 크기 변경
        title.sizeToFit()
        title.center.x = self.view.frame.width / 2 // x축의 중앙에 오도록
        
        self.view.addSubview(title)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
