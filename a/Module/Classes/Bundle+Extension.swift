//
//  Bundle+Extension.swift
//  a
//
//  Created by Daffa Yagrariksa on 27/02/24.
//

import Foundation

extension Bundle {
    public static var aModule: Bundle {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: TestViewController.self)
        #endif
    }
}
