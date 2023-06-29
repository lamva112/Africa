//
//  MapView.swift
//  Africa
//
//  Created by bui khac lam on 11/06/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - PROPRETIES
    
    @State private var region : MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 5.600286, longitude: 16.43377559)
        
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let location : [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    //MARK: - BODY

    var body: some View {
        //MARK: - No1  basic map
        //Map(coordinateRegion: $region)
        
        //MARK: - No2  advance map
        Map(coordinateRegion: $region,annotationItems: location,annotationContent: {
            item in
            // (A) PIN: OLD STYLE MAP
            //MapPin(coordinate: item.location,tint: .accentColor)
            // (B) MARKER: NEW STYLE
            //MapMarker(coordinate: item.location,tint: .accentColor)
            
            // (C) CUSTOM BASIC ANNOTATION (it could be interactive)
            
//            MapAnnotation(coordinate: item.location){
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32,height: 32,alignment: .center)
//
//
//            }// : ANNOTATION
            // (D) CUSTOM advance adnotation
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        })//Map
        .overlay(
            HStack (alignment: .center,spacing: 12){
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48,height:48,alignment: .center)
                
                VStack(alignment: .leading,spacing: 3){
                    HStack{
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                    
                    HStack{
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }//HStack
            .padding(.vertical,12)
            .padding(.horizontal,16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            ).padding()
            ,alignment: .top
        )
        
    }
}

    //NARK: - PREVIEW

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
