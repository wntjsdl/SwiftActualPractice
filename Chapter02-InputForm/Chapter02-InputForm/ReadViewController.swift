//
//  ReadViewController.swift
//  Chapter02-InputForm
//
//  Created by JuSun Kang on 2021/07/29.
//

import UIKit

class ReadViewController: UIViewController {
    // 전달된 값을 저장할 변수를 정의한다.
    var pEmail: String?
    var pUpdate: Bool?
    var pInterval: Double?

    override func viewDidLoad() {
        super.viewDidLoad()

        // 배경 색상을 설정한다.
        self.view.backgroundColor = .white
        
        // 레이블 객체를 정의한다.
        let email = UILabel()
        let update = UILabel()
        let interval = UILabel()
        
        // 커스텀 폰트 지정
        let customFont = UIFont(name: "BMJUA", size: 16)
        email.font = customFont
        update.font = customFont
        interval.font = customFont
        
        // 위치와 영역을 정의한다.
        email.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
        update.frame = CGRect(x: 50, y: 150, width: 300, height: 30)
        interval.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        
        // 전달받은 값을 레이블에 표시한다.
        email.text = "전달받은 이메일: \(self.pEmail!)"
        update.text = "업데이트 여부: \(self.pUpdate == true ? "업데이트 함" : "업데이트 안 함")"
        interval.text = "업데이트 주기: \(self.pInterval!)분마다"
        
        // 레이블을 루트 뷰에 추가한다.
        self.view.addSubview(email)
        self.view.addSubview(update)
        self.view.addSubview(interval)
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
