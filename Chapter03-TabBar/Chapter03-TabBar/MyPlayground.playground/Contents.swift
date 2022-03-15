import UIKit

let url_str = "penshop"
let url_full_str = "https://penshop://?m.penshop.co.kr/main/html.php?htmid=proc/samsunginfo.html"

let count = url_full_str.components(separatedBy: "\(url_str)://?").count



let url_str2 = "penshop"
let url_full_str2 = "penshop://https://m.penshop.co.kr/main/html.php?htmid=proc/samsunginfo.html"

let count2 = url_full_str2.components(separatedBy: "\(url_str2)://?").count



let url_str3 = "penshop"
let url_full_str3 = "penshop://?https://m.penshop.co.kr/main/html.php?htmid=proc/samsunginfo.html"

let count3 = url_full_str3.components(separatedBy: "\(url_str3)://?").count
