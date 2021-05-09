//
//  ViewController.swift
//  MapSample
//
//  Created by 关东升 on 2016-11-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.mapView.mapType = .standard
//    
//        let location = CLLocation(latitude: 40.002240, longitude: 116.323328)
//        //调整地图位置和缩放比例
//        let viewRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, 10000, 10000)
//        self.mapView.region = viewRegion

        self.placeCamera()
    }

    @IBAction func selectMapViewType(_ sender: AnyObject) {
        
        let sc = sender as! UISegmentedControl
        
        switch (sc.selectedSegmentIndex) {
        case 1:
            self.mapView.mapType = .satellite
        case 2:
            self.mapView.mapType = .hybrid
        default:
            self.mapView.mapType = .standard
        }
        
        self.placeCamera()
    }
    
    func placeCamera() {
        
        //设置3D摄像机
        let mapCamera = MKMapCamera()
        mapCamera.centerCoordinate = CLLocationCoordinate2DMake(40.002240, 116.323328)
        mapCamera.pitch = 45
        mapCamera.altitude = 500
        mapCamera.heading = 45
        
        //设置地图视图的camera属性
        self.mapView.camera = mapCamera
    }
}

