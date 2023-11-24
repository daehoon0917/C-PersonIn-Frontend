//
//  HomeViewController.swift
//  CafeIn
//
//  Created by 성대훈 on 11/24/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let homeBackGroundView = HomeBackgroundView()
    
    override func loadView() {
        view = homeBackGroundView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
    }
    
    

    

}
