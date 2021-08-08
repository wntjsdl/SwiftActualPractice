//
//  MapKitViewController.swift
//  Chapter03-Alert
//
//  Created by JuSun Kang on 2021/08/08.
//

import Foundation
import MapKit

class MapKitViewController: UIViewController {
    override func viewDidLoad() {
        // 뷰 컨트롤러에 맵킷 뷰를 추가한다.
        let mapkitView = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.view = mapkitView
        self.preferredContentSize.height = 200
        
        // 표시할 위치
        let pos = CLLocationCoordinate2D(latitude: 37.514322, longitude: 126.894623)
        
        // 지도가 보여줄 넓이. 일종의 축적. 숫자가 작을수록 좁은 범위를 확대시켜서 보여준다.
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        
        // 지도 영역을 정의
        let region = MKCoordinateRegion(center: pos, span: span)
        
        // 영역을 지도 뷰에 표시
        mapkitView.region = region
        mapkitView.regionThatFits(region)
        
        // 위치를 핀으로 표시
        let point = MKPointAnnotation()
        point.coordinate = pos
        mapkitView.addAnnotation(point)
    }
}
