//
//  CSTabBarController.swift
//  Chapter03-CSTabBar
//
//  Created by JuSun Kang on 2021/08/14.
//

import UIKit

class CSTabBarController: UITabBarController {
    
    let csView = UIView()
    let tabItem01 = UIButton(type: .system)
    let tabItem02 = UIButton(type: .system)
    let tabItem03 = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 기존 탭 바를 숨김 처리
        self.tabBar.isHidden = true
        
        // 새로운 탭 바 역할을 할 뷰를 위해 기준 좌표와 크기를 정의합니다.
        let width = self.view.frame.width // 1
        let height: CGFloat = 50 // 2
        let x: CGFloat = 0 // 3
        let y = self.view.frame.height - height // 4
        
        // 정의된 값을 이용하여 새로운 뷰의 속성을 설정합니다.
        self.csView.frame = CGRect(x: x, y: y, width: width, height: height)
        self.csView.backgroundColor = .brown
        
        self.view.addSubview(self.csView)
        
        // 1. 버튼의 너비와 높이를 설정한다.
        let tabBtnWidth = self.csView.frame.size.width / 3
        let tabBtnHeight = self.csView.frame.height
        
        // 2. 버튼의 영역을 차례로 설정한다.
        self.tabItem01.frame = CGRect(x: 0, y: 0, width: tabBtnWidth, height: tabBtnHeight)
        self.tabItem02.frame = CGRect(x: tabBtnWidth, y: 0, width: tabBtnWidth, height: tabBtnHeight)
        self.tabItem03.frame = CGRect(x: tabBtnWidth * 2, y: 0, width: tabBtnWidth, height: tabBtnHeight)
        
        // 3. 버튼의 공통 속성을 설정하고, 뷰에 추가한다.
        self.addTabBarBtn(btn: self.tabItem01, title: "첫 번째 버튼", tag: 0)
        self.addTabBarBtn(btn: self.tabItem02, title: "두 번째 버튼", tag: 1)
        self.addTabBarBtn(btn: self.tabItem03, title: "세 번째 버튼", tag: 2)
        
        // 처음에 첫 번째 탭이 선택되어 있도록 초기 상태를 정의해 준다.
        self.onTabBarItem(self.tabItem01)
    }
    
    /// 버튼의 공통 속성을 정의하기 위한 메소드
    func addTabBarBtn(btn: UIButton, title: String, tag: Int) {
        // 버튼의 타이틀과 태그값을 입력한다.
        btn.setTitle(title, for: .normal)
        btn.tag = tag
        
        // 4. 버튼의 텍스트 색상을 일반 상태와 선택된 상태로 나누어 설정한다.
        btn.setTitleColor(UIColor.white, for: .normal) // 일반 상태의 버튼 색상
        btn.setTitleColor(UIColor.yellow, for: .selected) // 선택되었을 때의 버튼 색상
        
        // 5. 버튼에 액션 메소드를 연결한다.
        btn.addTarget(self, action: #selector(onTabBarItem(_:)), for: .touchUpInside)
        
        // csView에 버튼을 추가한다.
        self.csView.addSubview(btn)
    }
    
    @objc func onTabBarItem(_ sender: UIButton) {
        // 모든 버튼을 선택되지 않은 상태로 초기화 처리한다.
        self.tabItem01.isSelected = false
        self.tabItem02.isSelected = false
        self.tabItem03.isSelected = false
        
        // 인자값으로 입력된 버튼만 선택된 상태로 변경한다.
        sender.isSelected = true
        
        // 버튼에 설정된 태그값을 사용하여 뷰 컨트롤러를 전환한다.
        self.selectedIndex = sender.tag
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
