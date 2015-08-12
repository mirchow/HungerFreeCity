//
//  HFCDataProvider.swift
//  Hunger Free City
//
//  Created by Mirek Chowaniok on 6/30/15.
//  Copyright (c) 2015 Mobilesoft. All rights reserved.
//

import Foundation
import Alamofire

public class HFCDataProvider {
    public let requestType: String
    public let parameters: [String:String]
    
    // designated initializer
    public init(_ requestType: String, _ parameters: Dictionary<String, String> = [:]) {
        self.requestType = requestType
        self.parameters = parameters
    }
    
    // convenience initializer for creating a HFC Request for Distribution Centers
//    public convenience init(search: String, count: Int = 0, _ resultType: SearchResultType = .Mixed, _ region: CLCircularRegion? = nil) {
//        //var parameters =
//    }
    
    // debug println with identifying prefix
    private func log(whatToLog: AnyObject) {
        debugPrintln("HFCRequest: \(whatToLog)")
    }
    
    // synchronizes access to self
    
    // Get nearby Distribution Centers
    func getDistributionCentersNearby() {
        Alamofire.request(.GET, Constants.HFCService.HFCServerUrl, parameters: ["foo": "bar"])
            .responseJSON { (request, response, JSON, error) in
                println(request)
                println(response)
                println(JSON)
                println(error)
                
        }
    }
    
//    class func getDistributorsDataFromFile(success: ((data: NSData) -> Void)) {
//        
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
//            let filePath = NSBundle.mainBundle().pathForResource("HFCDistributors", ofType: "json")
//            
//            var readError: NSError?
//            if let data = NSData(contentsOfFile: filePath1, options: NSDataReadingOptions.DataReadingUncached, error: &readError) {
//                success(data: data)
//            }
//        })
//    }
    
}