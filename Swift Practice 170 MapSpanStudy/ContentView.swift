//
//  ContentView.swift
//  Swift Practice 170 MapSpanStudy
//
//  Created by Dogpa's MBAir M1 on 2022/8/17.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject var vm = MapViewModel()
    var body: some View {
        
        ZStack{
            Map(coordinateRegion: $vm.region , annotationItems: vm.SiteArray) { item in
                MapAnnotation(coordinate: item.coordinate, content: {
                    VStack{
                        Text(item.locationName)
                            .font(.system(size: 8))
                            .foregroundColor(.black)
                        Image(systemName: "mappin")
                            .foregroundColor(.brown)
                    }
                })
            }
            .ignoresSafeArea()
            VStack{
                
                Button {
                    vm.getRandomArray()
                } label: {
                    Text("取得隨機地點")
                }.frame(width: 300, height: 70, alignment: .center)
                    .background(.yellow)
                Spacer()
            }.offset(x: 0, y: 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
