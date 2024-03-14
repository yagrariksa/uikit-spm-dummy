//
//  CustomCell2.swift
//  a
//
//  Created by Daffa Yagrariksa on 14/03/24.
//

import Foundation
import UIKit

class CustomCell2: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    func set(_ data: CustomCellData) {
        self.label.text = data.textLabel
    }
}
