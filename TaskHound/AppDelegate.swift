//
//  AppDelegate.swift
//  TaskHound
//
//  Created by LiLi on 15/8/17.
//  Copyright (c) 2015年 SourceTec. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    //截取于 AppDelegate的部分代码
    // 定义一个 BMKMapManager 用于初始化地图
    var _mapManager: BMKMapManager?;
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        _mapManager = BMKMapManager();
        // 如果要关注网络及授权验证事件，请设定     generalDelegate参数，使AppDelegate实现 BMKGeneralDelegate 协议，如果不需要设置为nil
        // BMKGeneralDelegate 的两个回调方法能给出一定的错误提示
        var ret:Bool = _mapManager!.start("0WjGcAXGBr7dIDaYuP7Wdltw", generalDelegate: nil);
        if (!ret) {
            NSLog("manager start failed!");
        }
        return true
    }
    //func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        //return true
    //}

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

