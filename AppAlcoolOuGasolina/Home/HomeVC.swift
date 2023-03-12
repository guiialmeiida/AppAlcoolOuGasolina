//
//  HomeVC.swift
//  AppAlcoolOuGasolina
//
//  Created by Guilherme Almeida on 09/03/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen:  HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }


}

extension HomeVC: HomeScreenDelegate{
    func tappedStartButton() {
        let vc = CalculatorVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
