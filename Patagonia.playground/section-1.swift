// Playground - noun: a place where people can play

import UIKit
import XCPlayground
import Foundation
import Alamofire

// Allow network requests to complete
XCPSetExecutionShouldContinueIndefinitely()



Alamofire.request(.GET, "http://quinton.me")
    .response { (request, response, data, error) in
        println(request)
        println(response)
        println(error)
    }



