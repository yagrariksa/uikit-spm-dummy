//
//  TestViewController.swift
//  a
//
//  Created by Daffa Yagrariksa on 26/02/24.
//

import Foundation
#if canImport(UIKit)
import UIKit


public class TestViewController: UIViewController {
    
    public static func nib() -> UIStoryboard {
        return UIStoryboard(name: "TestView", bundle: Bundle(for: self))
    }

    static public func createViewController() -> TestViewController {
        let storyboard = UIStoryboard(name: "TestView", bundle: Bundle.module)
        return storyboard.instantiateInitialViewController() as! TestViewController
    }
    
    @IBOutlet var tableView: UITableView!
    
    public override func viewDidLoad() {
//        let customCellNib = UINib(nibName: "CustomCell", bundle: Bundle.module)
//        tableView.register(customCellNib, forCellReuseIdentifier: "customCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "custom3")
    }
}

extension TestViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom3", for: indexPath)
        // cell.set(CustomCellData(textLabel: "Label \(indexPath.row + 1)"))
        let image = UIImage(systemName: "square.and.arrow.down.fill")
        let imageView = UIImageView(image: image)
        cell.addSubview(imageView)
        
        let label = UILabel()
        label.text = "custom3 \(indexPath.row + 1)"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 21)
        cell.addSubview(label)
        
        let imageViewHeight = NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 44)
        let imageViewWidth = NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 44)
        
        let imageCenterYConstraint = NSLayoutConstraint(item: imageView, attribute: .centerY, relatedBy: .equal, toItem: imageView.superview, attribute: .centerY, multiplier: 1, constant: 0)
        let imageLeadingConstraint = NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: imageView.superview, attribute: .leading, multiplier: 1, constant: 16)
        
        let labelCenterYConstraint = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: label.superview, attribute: .centerY, multiplier: 1, constant: 0)
        let labelCenterXConstraint = NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: label.superview, attribute: .centerX, multiplier: 1, constant: 0)
//        let labelLeadingConstraint = NSLayoutConstraint(item: label, attribute: .leading, relatedBy: .equal, toItem: imageView, attribute: .trailing, multiplier: 1, constant: 16)
//        let labelTrailingConstraint = NSLayoutConstraint(item: label, attribute: .trailing, relatedBy: .greaterThanOrEqual, toItem: cell.contentView, attribute: .trailing, multiplier: 1, constant: 16)
        
        NSLayoutConstraint.activate([imageViewHeight, imageViewWidth,
                                     imageCenterYConstraint, imageLeadingConstraint,
                                     labelCenterYConstraint, labelCenterXConstraint])
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
}

#endif
