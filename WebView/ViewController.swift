//
//  ViewController.swift
//  WebView
//
//  Created by Matias Molina on 21/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var search: UITextField!
    @IBOutlet weak var searchButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchBtn()
    }
    
    private func configureSearchBtn(){
        searchButton.layer.cornerRadius = 6
        searchButton.layer.shadowColor = UIColor.black.cgColor
        searchButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        searchButton.layer.shadowRadius = 3
        searchButton.layer.shadowOpacity = 0.5
    }
    
    @IBAction func searchAction(_ sender: UIButton) {
        performSegue(withIdentifier: "search", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "search"{
            let objDestiny = segue.destination as! WebViewVC
            objDestiny.searchWord = search.text
        }
    }
}

