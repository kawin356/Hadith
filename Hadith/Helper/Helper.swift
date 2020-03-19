//
//  Helper.swift
//  Hadith
//
//  Created by Kittikawin Sontinarakul on 19/3/2563 BE.
//  Copyright © 2563 Kittikawin Sontinarakul. All rights reserved.
//

import Foundation


func delay(second: Double, completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + second, execute: completion)
}
