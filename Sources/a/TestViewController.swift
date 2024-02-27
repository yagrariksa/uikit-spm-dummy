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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension TestViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Label \(indexPath.row)"
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
}

#endif
