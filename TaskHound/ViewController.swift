//
//  ViewController.swift
//  TaskHound
//
//  Created by LiLi on 15/8/17.
//  Copyright (c) 2015年 SourceTec. All rights reserved.
//

import UIKit

class ViewController: UIViewController,BMKMapViewDelegate {
    var mapView: BMKMapView?;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView = BMKMapView(frame: CGRectMake(0, 0, 320, 480));
        mapView!.zoomLevel = 12;
        mapView!.centerCoordinate = CLLocationCoordinate2DMake(39.914, 116.404);
        self.view.addSubview(mapView!);
        
        var annotation: BMKPointAnnotation = BMKPointAnnotation();
        annotation.coordinate = CLLocationCoordinate2DMake(39.914, 116.404);
        annotation.title = "这里是北京";
        mapView?.addAnnotation(annotation);
        
    }
    
    func mapView(mapView: BMKMapView!, viewForAnnotation annotation: BMKAnnotation!) -> BMKAnnotationView! {
        if annotation.isKindOfClass(BMKPointAnnotation){
            var newAnnotationView: BMKPinAnnotationView = BMKPinAnnotationView(annotation: annotation, reuseIdentifier: "myAnnotation");
            return newAnnotationView;
        }
        return nil;
    }
    
    override func viewWillAppear(animated: Bool) {
        mapView?.viewWillAppear();
        mapView?.delegate = self;
    }
    override func viewWillDisappear(animated: Bool) {
        mapView?.viewWillDisappear();
        mapView?.delegate = nil;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}