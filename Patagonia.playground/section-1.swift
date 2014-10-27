// Playground - noun: a place where people can play

import UIKit
import XCPlayground
import Foundation
import Alamofire
import OAuth2




//MAKE SURE ALAMOFIRE WORKS

// Allow network requests to complete
XCPSetExecutionShouldContinueIndefinitely()



Alamofire.request(.GET, "http://quinton.me")
    .response { (request, response, data, error) in
        println(request)
        println(response)
        println(error)
    }

//MAKE SURE OAUTH2 LIB WORKS
let settings = [
    "client_id" : "my_swift_app",
    "client_secret" : "C7447242-A0CF-47C5-BAC7-B38BA91970A9",
    "authorize_u:i" : "https://authorize.smartplatforms.org/authorize",
    "token_uri" : "https://authorize.smartplatforms.org/token"
]


let oauth = OAuth2CodeGrant(settings: settings)


oauth.onAuthorize = { parameters in
    println("Did authorize with parameters: \(parameters)")
}
oauth.onFailure = { error in        // `error` is nil on cancel
    if nil != error {
        println("Authorization went wrong: \(error!.localizedDescription)")
    }
}







