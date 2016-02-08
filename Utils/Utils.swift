//
//  Utils.swift
//  
//
//  Created by Tanguy Helesbeux on 08/02/2016.
//
//

import Foundation


/**
 Invocs `block` after a specified `delay` in the main thread.
 
 - parameters delay: Duration in seconds before invoking the `block`
 - parameters block: Block executed after `delay`seconds
 
 - credits: @matt http://stackoverflow.com/questions/24034544/dispatch-after-gcd-in-swift/24318861#24318861
 */
func delay(delay: Double, block: () -> ()) {

    let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
    dispatch_after(delayTime, dispatch_get_main_queue()) {
        block()
    }
}
