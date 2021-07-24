//
//  MemoCell.swift
//  MyMemory
//
//  Created by JuSun Kang on 2021/07/19.
//

import UIKit

class MemoCell: UITableViewCell {
    @IBOutlet weak var subject: UILabel! // 메모 제목
    @IBOutlet weak var contents: UILabel! // 메모 내용
    @IBOutlet weak var regdate: UILabel! // 등록 일자
    @IBOutlet weak var img: UIImageView! // 이미지
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
