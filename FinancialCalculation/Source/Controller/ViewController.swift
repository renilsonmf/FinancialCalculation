//
//  LoginViewController.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 07/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    var homeLogin = HomeLoginView(frame: .zero)
        
    //MARK: Propertys PageControl
   let settingsPage = SettingsPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainBackground
        settingsPage.pageControl.addTarget(self, action: #selector(pageControlDidChange(_:)), for: .valueChanged)
        //settingsPage.scrollView.backgroundColor = .systemRed
        view.addSubview(settingsPage.scrollView)
       view.addSubview(settingsPage.pageControl)
              
        //homeLogin.buttons()
    }
    
    //MARK: Propertys Buttons
    override func loadView() {
        self.view = homeLogin
    }
    
    
    @objc private func pageControlDidChange(_ sender: UIPageControl){
        let current = sender.currentPage
        settingsPage.scrollView.setContentOffset(CGPoint(x: CGFloat(current) * view.frame.size.width, y: 0), animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        settingsPage.pageControl.frame = CGRect(x: 0, y: view.frame.size.height-450, width: view.frame.size.width, height: 70)
        settingsPage.scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 460)
        
        if settingsPage.scrollView.subviews.count == 2 {
            settingsPage.configureScrollView(view: view)
        }
    }
    
   
  
  
}




