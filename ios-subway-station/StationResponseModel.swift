//
//  StationResponseModel.swift
//  ios-subway-station
//
//  Created by jiinheo on 2021/12/27.
//

import Foundation

struct StationResponseModel: Decodable {
    var stations: [Station] {searchInfo.row} //internal = 기본 접근 수준
    // 팁!
    // 원래는 StationResponseModel().serchInfo.row  인데
    // 근데 stations을 사용하게 되면
    // StationResponseModel().stations 이다.
    
    private let searchInfo: SerchInfoBySubwayNameServiceModel
    
    enum CodingKeys: String, CodingKey{
        case searchInfo = "SearchInfoBySubwayNameService"
    }
    
    struct SerchInfoBySubwayNameServiceModel: Decodable {
        var row: [Station] = []
    }
}

struct Station: Decodable {
    let stationName: String
    let lineNumber: String
    
    enum CodingKeys: String, CodingKey {
        case stationName = "STATION_NM"
        case lineNumber = "LINE_NUM"
    }
}
