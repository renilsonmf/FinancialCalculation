//
//  SettingsPageControl.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 08/06/21.
//

import UIKit
public class SettingsPageControl: UIView {

    public let scrollView = UIScrollView()
    
    public let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .systemGreen
        return pageControl
    }()
    
    public func configureScrollView(view: UIView){
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
