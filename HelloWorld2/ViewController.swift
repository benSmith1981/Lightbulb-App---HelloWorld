//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Ben Smith on 17/05/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var lightBulbImag: UIImageView!
//    var lightBulb: lightbulbEnum?
    var lightBulb: LightBulb?
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        lightBulb = LightBulb()
        print("view did load")
    }
    
    override func loadView() {
        super.loadView()
        print("load view")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did Appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("will will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Did receive memory warning")
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ToggleLight(_ sender: Any) {
        lightBulbImag.image = lightBulb?.switchLightBulbState()
    }
    
    @IBAction func flickerLightbulb(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(flickerBulb), userInfo: nil, repeats: true)
        
    }
    
    func flickerBulb() {
        lightBulbImag.image = lightBulb?.switchLightBulbState()
    }
}

