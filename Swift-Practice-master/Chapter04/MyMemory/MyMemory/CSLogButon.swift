//
//  CSLogButon.swift
//  MyMemory
//
//  Created by prologue on 2017. 6. 8..
//  Copyright © 2017년 rubypaper. All rights reserved.
//

import UIKit

public enum CSLogType: Int {
  case basic // 기본 로그 타입
  case title // 버튼의 타이틀을 출력
  case tag // 버튼의 태그값을 출력
}

public class CSLogButton: UIButton {
  // 로그 출력 타입
  public var logType: CSLogType = .basic
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    // 버튼에 스타일 적용
    self.setBackgroundImage(UIImage(named: "button-bg"), for: .normal)
    self.tintColor = UIColor.white
    
    // 버튼의 클릭 이벤트에 logging(_:) 메소드를 연결
    self.addTarget(self, action: #selector(logging(_:)), for: .touchUpInside)
  }
  
  // 로그를 출력하는 액션 메소드
  @objc func logging(_ sender: UIButton) {
    switch self.logType {
    case .basic: // 단순히 로그만 출력함
      NSLog("버튼이 클릭되었습니다")
    case .title: // 로그에 버튼의 타이틀을 출력함
      let btnTitle = sender.titleLabel?.text ?? "타이틀 없는" // ①
      NSLog("\(btnTitle) 버튼이 클릭되었습니다.")
    case .tag: // 로그에 버튼의 태그를 출력함
      NSLog("\(sender.tag) 버튼이 클릭되었습니다.")
    }
  }
}
