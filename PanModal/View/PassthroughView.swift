//
//  File.swift
//  
//
//  Created by 배성연 on 5/5/25.
//

import UIKit

final class PassthroughView: UIView {
    // Override hitTest to control how touch events are handled
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        // Ask the superview which subview should receive the touch event
        let hitView = super.hitTest(point, with: event)

        // If the hit view is self (i.e., background area), return nil to pass the touch through
        // If it's a subview, return it so the subview can receive the touch
        return hitView == self ? nil : hitView
    }
}
