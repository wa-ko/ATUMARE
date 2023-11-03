//
//  GoogleMapView.swift
//  ATUMARE
//
//  Created by 今村大輝 on 2023/10/24.
//

import SwiftUI
import UIKit
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {

    let marker : GMSMarker = GMSMarker()

    /// Creates a `UIView` instance to be presented.
    func makeUIView(context: Self.Context) -> GMSMapView {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 37.522,139.9375 at zoom level 15.
        let camera = GMSCameraPosition.camera(withLatitude: 37.521, longitude: 139.9375, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)

        return mapView
    }

    /// Updates the presented `UIView` (and coordinator) to the latest
    /// configuration.
    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
        // Creates a marker in the center of the map.
        marker.position = CLLocationCoordinate2D(latitude: 37.522, longitude: 139.9375)
        marker.title = "University of Aizu"
        marker.snippet = "Aizuwakamatsu"
        marker.map = mapView
    }

}
