//
//  GamesViewController.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import UIKit

class GamesViewController: UIViewController {

    @IBOutlet weak var gamePosterPageControl: UIPageControl!
    @IBOutlet weak var gamePosterImage: UIImageView!
    let gamePosters = Array(0...7)
        
    override func viewDidLoad() {
        super.viewDidLoad()

        gamePosterPageControl.numberOfPages = gamePosters.count
        gamePosterImage.image = UIImage(named: String(gamePosters.first!))
                
        // Establecer color del tint a rojo
        gamePosterPageControl.currentPageIndicatorTintColor = .red
        gamePosterPageControl.pageIndicatorTintColor = .lightGray
        
        updatePageControlImages()
        
        // Change color of the navigationBar to gray
        self.navigationController?.navigationBar.tintColor = .gray
    }
    

    

    @IBAction func leftSwipeDone(_ sender: Any) {
        if gamePosterPageControl.currentPage == gamePosters.count - 1  {
                   gamePosterPageControl.currentPage = 0
               } else {
                   gamePosterPageControl.currentPage += 1
               }
               
               gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
               updatePageControlImages()
    }
    @IBAction func rightSwipeDone(_ sender: Any) {
        if gamePosterPageControl.currentPage == 0  {
                    gamePosterPageControl.currentPage = gamePosters.count - 1
                } else {
                    gamePosterPageControl.currentPage -= 1
                }
                
                gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                updatePageControlImages()
    }
    
    func updatePageControlImages() {
            if #available(iOS 14.0, *) {
                for index in 0..<gamePosters.count {
                    if index == gamePosterPageControl.currentPage {
                        let redLogoImage = UIImage(named: "gow_logo")?.withRenderingMode(.alwaysOriginal)
                        gamePosterPageControl.setIndicatorImage(redLogoImage, forPage: index)
                    } else {
                        let unselectedImage = UIImage(named: "unselectedImage")?.withRenderingMode(.alwaysOriginal)
                        gamePosterPageControl.setIndicatorImage(unselectedImage, forPage: index)
                    }
                }
            }
        }
}
