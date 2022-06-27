// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sDUISchema = try? JSONDecoder().decode(SDUISchema.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation
import SDUI


// MARK: - SDUISchema



public enum SDUIPlaceHolderType: String, Codable, Hashable {
    case example = "EXAMPLE"
}

public enum SDUIActionType: String, Codable, Hashable {
    case alert = "ALERT"
    case navigationLink = "NAVIGATION_LINK"
    case share = "SHARE"
    case sheet = "SHEET"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIActionBase





public enum SDUIHeaderType: String, Codable, Hashable {
    case header = "HEADER"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUINavigationLink


public enum SDUISheetType: String, Codable, Hashable {
    case sheet = "SHEET"
}

public enum SDUIAction: Codable, Equatable, Hashable {
    case sheet(SDUISheet)
    case alert(SDUIAlert)
    case navigationLink(SDUINavigationLink)
    case share(SDUIShare)
    case empty(SDUIEmpty)

    public init(from decoder: Decoder) throws {
        let type = try SDUIActionType(rawValue: decoder.decodeType())

        switch type {
        case .sheet: self = try .sheet(decoder.decodeSingleValueContainer())
        case .alert: self = try .alert(decoder.decodeSingleValueContainer())
        case .navigationLink: self = try .navigationLink(decoder.decodeSingleValueContainer())
        case .share: self = try .share(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}
