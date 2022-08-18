//
//  MapViewModel.swift
//  Swift Practice 170 MapSpanStudy
//
//  Created by Dogpa's MBAir M1 on 2022/8/17.
//

import Foundation
import MapKit

final class MapViewModel : ObservableObject {
    
    static var mapSiteInfo = [
        LocationInfo(locationName: "南京中山路口", coordinate: CLLocationCoordinate2D(latitude: 25.05209613290682, longitude: 121.52262644205325)),
        LocationInfo(locationName: "佳德鳳梨酥", coordinate: CLLocationCoordinate2D(latitude: 25.05149309289402, longitude: 121.56136908217748)),
        LocationInfo(locationName: "雙連捷運站", coordinate: CLLocationCoordinate2D(latitude: 25.057665287774267, longitude: 121.52070258908108)),
        LocationInfo(locationName: "武嶺", coordinate: CLLocationCoordinate2D(latitude: 24.13841623015346, longitude: 121.27613231089555) ),
        LocationInfo(locationName: "玉山", coordinate: CLLocationCoordinate2D(latitude: 23.47144414607863, longitude: 120.9565614647542) ),
        LocationInfo(locationName: "台北101", coordinate: CLLocationCoordinate2D(latitude: 25.034124805468366, longitude: 121.56459742830336)),
        LocationInfo(locationName: "誠品信義", coordinate: CLLocationCoordinate2D(latitude: 25.040111912498237, longitude: 121.56530375802147)),
        LocationInfo(locationName: "國父紀念館", coordinate: CLLocationCoordinate2D(latitude: 25.04023173572094, longitude: 121.56025206624714)),
        LocationInfo(locationName: "爭艷館", coordinate: CLLocationCoordinate2D(latitude: 25.0697284745406, longitude:121.5207299230507)),
        LocationInfo(locationName: "花博美術", coordinate: CLLocationCoordinate2D(latitude: 25.070605526965235, longitude:121.52491989810517)),
        LocationInfo(locationName: "圓山捷運站", coordinate: CLLocationCoordinate2D(latitude: 25.07135797854527, longitude:121.52013845451364)),
        LocationInfo(locationName: "台北美術館", coordinate: CLLocationCoordinate2D(latitude: 25.072551133729885, longitude:121.5249537247578)),
        LocationInfo(locationName: "迎風狗公園", coordinate: CLLocationCoordinate2D(latitude: 25.071947203878448, longitude:121.56542726090473)),
        LocationInfo(locationName: "中正紀念堂", coordinate: CLLocationCoordinate2D(latitude: 25.037079231508375, longitude:121.52255289693066)),
        LocationInfo(locationName: "故宮博物館", coordinate: CLLocationCoordinate2D(latitude: 25.105894564671516, longitude:121.5495002060138)),
        LocationInfo(locationName: "大屯山", coordinate: CLLocationCoordinate2D(latitude: 25.167849548485794, longitude:121.56542726090473)),
        LocationInfo(locationName: "台北動物園", coordinate: CLLocationCoordinate2D(latitude: 25.003414347204167, longitude:121.58200230646047)),
        LocationInfo(locationName: "羅東林場", coordinate: CLLocationCoordinate2D(latitude: 24.684522180290717, longitude:121.77237866140845)),
        LocationInfo(locationName: "鵝鑾鼻燈塔", coordinate: CLLocationCoordinate2D(latitude: 21.90649846518423, longitude:120.85377109992731)),
        LocationInfo(locationName: "國聖燈塔", coordinate: CLLocationCoordinate2D(latitude: 23.100874745046188, longitude:120.03602017262148)),
        LocationInfo(locationName: "富貴角燈塔", coordinate: CLLocationCoordinate2D(latitude: 25.298766078129496, longitude:121.53686720122532)),
        LocationInfo(locationName: "三貂角燈塔", coordinate: CLLocationCoordinate2D(latitude: 25.007739717393996, longitude:122.00196741286145)),
        LocationInfo(locationName: "大霸尖山", coordinate: CLLocationCoordinate2D(latitude: 24.459420123960186, longitude:121.25884657160067)),
        LocationInfo(locationName: "嘉明湖", coordinate: CLLocationCoordinate2D(latitude: 23.29352223253582, longitude:121.03402086583083)),
        LocationInfo(locationName: "奮起湖", coordinate: CLLocationCoordinate2D(latitude: 23.50539536528613, longitude:120.69499986952898)),
        LocationInfo(locationName: "雪山", coordinate: CLLocationCoordinate2D(latitude: 24.38473873015437, longitude:121.22991395671944)),
        LocationInfo(locationName: "日月潭", coordinate: CLLocationCoordinate2D(latitude: 23.859444506166415, longitude:120.91630636960015)),
        LocationInfo(locationName: "曾文水庫", coordinate: CLLocationCoordinate2D(latitude: 23.250737777507933, longitude:120.53686380020561)),
        LocationInfo(locationName: "南化水庫", coordinate: CLLocationCoordinate2D(latitude: 23.089622470610895, longitude:120.54285344923747)),
        LocationInfo(locationName: "鹿野高台", coordinate: CLLocationCoordinate2D(latitude: 22.916646625757625, longitude:121.12170218485764)),
        LocationInfo(locationName: "活水湖", coordinate: CLLocationCoordinate2D(latitude: 22.765310315392455, longitude:121.1648406983487)),
        LocationInfo(locationName: "三仙台", coordinate: CLLocationCoordinate2D(latitude: 23.126973966593727, longitude:121.4215785194098)),
        LocationInfo(locationName: "伯朗大道", coordinate: CLLocationCoordinate2D(latitude: 23.09893478401455, longitude:121.21289227506071)),
        LocationInfo(locationName: "雲山水", coordinate: CLLocationCoordinate2D(latitude: 23.827859525851284, longitude:121.51560504539827)),
        LocationInfo(locationName: "太魯閣", coordinate: CLLocationCoordinate2D(latitude: 24.20091662942842, longitude:121.45417571002668)),
        LocationInfo(locationName: "蘭陽博物館", coordinate: CLLocationCoordinate2D(latitude: 24.871746320391356, longitude:121.83311209347086)),
        LocationInfo(locationName: "基隆中正公園", coordinate: CLLocationCoordinate2D(latitude: 25.13391540013828, longitude:121.75066248866935)),
        LocationInfo(locationName: "北大武山", coordinate: CLLocationCoordinate2D(latitude: 22.629002910704397, longitude:120.76173200771936)),
        LocationInfo(locationName: "夢時代", coordinate: CLLocationCoordinate2D(latitude: 22.595397417879862, longitude:120.30699879834525)),
        LocationInfo(locationName: "高雄燈塔", coordinate: CLLocationCoordinate2D(latitude: 22.616520332615792, longitude:120.26487158543368))

    ]
    
    @Published var SiteArray = mapSiteInfo
    
    @Published var originalCenter = CLLocationCoordinate2D(latitude: 23.600630593419858, longitude: 121.01912790319054)
    
    @Published var span = MKCoordinateSpan(latitudeDelta: 3.3962709694192803 , longitudeDelta: 1.9656790193418203)
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 23.600630593419858, longitude: 121.01912790319054), span: MKCoordinateSpan(latitudeDelta: 3.3962709694192803 , longitudeDelta: 1.9656790193418203))

    
    func getRandomArray () {
        SiteArray.shuffle()
        let randomArray = SiteArray[0..<Int.random(in: 2..<6)] //SiteArray.count
        print("目前randomArray 數量： \(randomArray.count) \(randomArray)")
        
        //準備存放randomArray內的四極點
        var eastPoint: Double = 0       //越往東經度越大所以先以0為主
        var westPoint: Double = 180     //越往西經度越小所以先以180為主
        var southPoint: Double = 90     //越往南緯度越小所以先以90為主
        var northPoint: Double = 0      //越往北緯度越大所以先以0為主
        
        //存放Arry內四極點的位置
        var eastLocation: LocationInfo? = nil
        var westLocation: LocationInfo? = nil
        var southLocation: LocationInfo? = nil
        var northLocation: LocationInfo? = nil
        
        for i in 0..<randomArray.count {
            //判斷Array內所有地點極東點
            if randomArray[i].coordinate.longitude > eastPoint {
                eastPoint = randomArray[i].coordinate.longitude
                eastLocation = randomArray[i]
            }
            
            //判斷Array內所有地點極西點
            if randomArray[i].coordinate.longitude < westPoint {
                westPoint = randomArray[i].coordinate.longitude
                westLocation = randomArray[i]
            }
            //判斷Array內所有地點極南點
            if randomArray[i].coordinate.latitude < southPoint {
                southPoint = randomArray[i].coordinate.latitude
                southLocation = randomArray[i]
            }
            
            //判斷Array內所有地點極北點
            if randomArray[i].coordinate.latitude > northPoint {
                northPoint = randomArray[i].coordinate.latitude
                northLocation = randomArray[i]
            }
        }
        
        print("過濾完後的：\n極東點\(eastPoint) \(eastLocation!.locationName)\n極西點\(westPoint) \(westLocation!.locationName)\n極南點\(southPoint) \(southLocation!.locationName)\n極北點\(northPoint) \(northLocation!.locationName)")

        //取得東西與南北中心
        let EWCenter = (eastPoint + westPoint) / 2
        var NSCenter = ((southPoint + northPoint) / 2)
        print("南北中心：\(NSCenter)  ")
        
        //因為UI上面繪有Button，怕遮到所以距離大於0.25的顯示的中心往北移
        if (southPoint - northPoint) < 0.25 {
            NSCenter = (((southPoint + northPoint) / Double(2)))
        }else{
            NSCenter = (((southPoint + northPoint) / Double(2)) + 0.07)
        }
        //為了讓所有地點都能完全在View內，將顯示的跨度從原本計算出來的跨度*想要數字，乘數依照想顯示的大小決定
        let EWSpan = (eastPoint - westPoint) * 1.6
        let NSSPan = (northPoint - southPoint) * 1.6
        
        print("東西中心：\(EWCenter) 東西跨度：\(EWSpan) ")
        print("南北中心：\(NSCenter) 南北跨度：\(NSSPan) ")
        
        //重新指派地點中心與跨度
        originalCenter = CLLocationCoordinate2D(latitude: NSCenter, longitude: EWCenter)
        span = MKCoordinateSpan(latitudeDelta: NSSPan, longitudeDelta: EWSpan)
        region = MKCoordinateRegion(center: originalCenter, span: span)
    }
}


