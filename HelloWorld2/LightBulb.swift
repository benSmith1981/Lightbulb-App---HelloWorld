//
//  LightBulb.swift
//  HelloWorld2
//
//  Created by Ben Smith on 21/05/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class LightBulb {
    //has 2 states
    var onOrOff = false
    
    func switchLightBulbState() -> UIImage {
        switch self.onOrOff {
        case true:
            self.onOrOff = false
            flickerTorch()
            return #imageLiteral(resourceName: "LightBulbOff")
            
        case false:
            self.onOrOff = true
            flickerTorch()
            return #imageLiteral(resourceName: "lightonblack")
            
        }
    }
    
    func flickerTorch() {
        guard let device = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo) else { return }
        
        if device.hasTorch {
            do {
                try device.lockForConfiguration()
                device.torchMode = self.onOrOff ? .on : .off
                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
}
