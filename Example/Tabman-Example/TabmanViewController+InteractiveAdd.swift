//
//  TabmanViewController+InteractiveAdd.swift
//  Tabman-Example
//
//  Created by Merrick Sapsford on 16/10/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit
@testable import Tabman

extension TabmanViewController {
    
    func addBarInteractively(_ bar: TMBar,
                             dataSource: TMBarDataSource) {
        bar.dataSource = dataSource
        let overlay = BarInteractiveOverlayView.present(over: self,
                                                        context: .add(bar: bar))
        overlay.delegate = self
    }
}

extension TabmanViewController: BarInteractiveOverlayViewDelegate {
    
    func interactiveOverlayView(_ view: BarInteractiveOverlayView,
                                didRequestAdd bar: TMBar,
                                at location: TabmanViewController.BarLocation) {
        addBar(bar, dataSource: bar.dataSource!, at: location)
    }
}
