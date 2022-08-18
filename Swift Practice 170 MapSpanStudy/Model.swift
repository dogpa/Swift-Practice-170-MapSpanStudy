//
//  Model.swift
//  Swift Practice 170 MapSpanStudy
//
//  Created by Dogpa's MBAir M1 on 2022/8/17.
//

import Foundation
import MapKit

/// 自定義Struct顯示地理位置名稱、座標
struct LocationInfo: Identifiable {
    let id = UUID()
    var locationName: String
    var coordinate: CLLocationCoordinate2D
}
