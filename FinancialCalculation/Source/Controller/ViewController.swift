//
//  LoginViewController.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 07/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Propertys Buttons
    var onLoginButtons: ((_ login: LoginType) -> Void)?
    var loginView = LoginView(frame: .zero)
    
    //MARK: Propertys PageControl
    private let scrollView = UIScrollView()
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .systemGreen
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainBackground
        pageControl.addTarget(self, action: #selector(pageControlDidChange(_:)), for: .valueChanged)
        scrollView.backgroundColor = .systemFill
        view.addSubview(scrollView)
        view.addSubview(pageControl)
        
        setActions()
        
    }
    
    override func loadView() {
        self.view = loginView
    }
    
    private func setActions(){
        loginView.onLoginButtons = { login in self.onLoginButtons?(login)
            
        }
    }
    
    @objc private func pageControlDidChange(_ sender: UIPageControl){
        let current = sender.currentPage
        scrollView.setContentOffset(CGPoint(x: CGFloat(current) * view.frame.size.width, y: 0), animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageControl.frame = CGRect(x: 0, y: view.frame.size.height-450, width: view.frame.size.width, height: 70)
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 460)
        
        if scrollView.subviews.count == 2 {
            configureScrollView()
        }
    }
    
    private func configureScrollView(){
        scrollView.contentSize = CGSize(width: view.frame.size.width*4, height: scrollView.frame.size.height)
        scrollView.isPagingEnabled = true
        pageControl.isSelected = true
       
        
        let imagePage: [UIImage] = [.descomplicou, .planejamento, .ficaDica, .naPalmaDaMao]
        
        for i in 0..<4{
            let page = UIImageView(frame: CGRect(x: CGFloat(i) * view.frame.size.width, y: 0, width: view.frame.size.width, height: scrollView.frame.size.height))
            
            page.image = imagePage[i]
            scrollView.addSubview(page)
        }
    }
  
  
}




