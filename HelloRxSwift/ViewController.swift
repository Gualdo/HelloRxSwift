//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by Eduardo David De La Cruz Marrero on 7/7/21.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Observable.from([1,2,3,4,5])
    }
}
