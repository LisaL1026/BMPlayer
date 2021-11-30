//
//  BMPlayerManager.swift
//  Pods
//
//  Created by BrikerMan on 16/5/21.
//
//

import UIKit
import AVFoundation
import NVActivityIndicatorView

public let BMPlayerConf = BMPlayerManager.shared

public enum BMPlayerTopBarShowCase: Int {
    case always         = 0
    case horizantalOnly = 1
    case none           = 2
}

open class BMPlayerManager {
    /// single
    public static let shared = BMPlayerManager()
    
    /// tint color
    open var tintColor = UIColor.white
    
    /// Loader
    open var loaderType = NVActivityIndicatorType.ballRotateChase
    
    /// should auto play
    open var shouldAutoPlay = true
    
    open var topBarShowInCase = BMPlayerTopBarShowCase.always
    
    open var animateDelayTimeInterval = TimeInterval(5)
    
    /// should show log
    open var allowLog = false
    
    /// use gestures to set brightness, volume and play position
    open var enableBrightnessGestures = true
    open var enableVolumeGestures = true
    open var enablePlaytimeGestures = true
    open var enablePlayControlGestures = true
    open var enableCallbackMaskTapEvent = false
    
    open var enableChooseDefinition = true
    
    internal static func asset(for resouce: BMPlayerResourceDefinition) -> AVURLAsset {
        return AVURLAsset(url: resouce.url, options: resouce.options)
    }
    
    /**
     print log
     
     - parameter info: log info
     */
    func log(_ info:String) {
        if allowLog {
            print(info)
        }
    }
}
