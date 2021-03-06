//
//  LoginViewController.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 07/06/21.
//

import UIKit

class HomeLoginViewController: UIViewController {
    
    let homeLogin = HomeLoginView(frame: .zero)
    let settingsPage = SettingsPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsPage.addToViewControllerPageControl(view: view)
    }
    
    //MARK: Propertys Buttons
    override func loadView() {
        self.view = homeLogin
    }
    
    //MARK: Propertys PageControl
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        settingsPage.pageControl.frame = CGRect(x: 0, y: settingsPage.scrollView.frame.size.height-18, width: view.frame.size.width, height: 70)
        settingsPage.scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 460)
        
        if settingsPage.scrollView.subviews.count == 2 {
            settingsPage.configureScrollView(view: view)
        }
    }
  
}




