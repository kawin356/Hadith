//
//  Constants.swift
//  Hadith
//
//  Created by Kittikawin Sontinarakul on 19/3/2563 BE.
//  Copyright © 2563 Kittikawin Sontinarakul. All rights reserved.
//

import Foundation

struct K {
    struct Segue {
        static let gettingStarted: String = "GettingStarted"
    }
    struct Storyboard {
        static let main: String = "Main"
        static let mainTabbar: String = "MainTabbar"
    }
    struct Table {
        static let reuseCell: String = "Cell"
    }
    
    struct FireStore {
        static let collectionName: String = "Hadith"
        static let hadithName: String = "hadithName"
        static let arab: String = "arab"
        static let thai: String = "thai"
        static let type: String = "type"
        static let rec: String = "recorder"
    }
}
