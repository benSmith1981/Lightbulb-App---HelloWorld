//
//  LightBulbEnum.swift
//  HelloWorld2
//
//  Created by Ben Smith on 21/05/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

enum lightbulbEnum {
    case on
    case off

    mutating func switchLightBulbState() -> UIImage {
        switch self {
        case .on:
            self = .off
            flickerTorch()
            return #imageLiteral(resourceName: "LightBulbOff")

        case .off:
            self = .on
            flickerTorch()
            return #imageLiteral(resourceName: "lightonblack")

        }
    }

    func flickerTorch() {
        guard let device = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo) else { return }

        if device.hasTorch {
            do {
                try device.lockForConfiguration()

                if self == .on {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }

                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
}
