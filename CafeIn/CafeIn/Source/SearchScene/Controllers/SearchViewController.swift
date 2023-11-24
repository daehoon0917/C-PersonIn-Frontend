//
//  SearchViewController.swift
//  CafeIn
//
//  Created by 성대훈 on 11/25/23.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {
    
    private let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 1, green: 0.98, blue: 0.94, alpha: 1)
        searchBarSetupUI()
        
    }
    
    
    
}

extension SearchViewController {
    private func searchBarSetupUI() {
        searchBar.delegate = self
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "검색어를 입력하시오..."
        searchBar.searchTextField.becomeFirstResponder()
        navigationItem.titleView = searchBar
        
    }
    
    
    
}
