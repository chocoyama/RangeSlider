//
//  ViewController.swift
//  Sample
//
//  Created by Takuya Yokoyama on 2017/02/18.
//  Copyright © 2017年 Takuya Yokoyama. All rights reserved.
//

import UIKit
import RangeSlider

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let slider = RangeSlider()
        let configuration = RangeSlider.Configuration(
            frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 65),
            values: [0, 100, 200, 300, 400, 500, 600, 700, 900, 1000],
            tabPosition: (left: 200, right: 700),
            activeColor: .blue,
            deactiveColor: .lightGray
        )
        slider.configure(with: configuration)
        slider.delegate = self
        view.addSubview(slider)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: RangeSliderDelegate {
    func didStartChanged(range: RangeSlider.RangeValue, atRangeSlider: RangeSlider) {
        print("Start: \(range)")
    }
    
    func didChanged(range: RangeSlider.RangeValue, atRangeSlider: RangeSlider) {
        print("Change: \(range)")
    }
    
    func didFinishChanged(range: RangeSlider.RangeValue, atRangeSlider: RangeSlider) {
        print("Finish: \(range)")
    }
}
