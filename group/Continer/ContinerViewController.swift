//
//  ContinerViewController.swift
//  group
//
//  Created by Hamed Amiry on 24.11.2021.
//

import UIKit

class ContinerViewController: UIViewController {

    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstView: UIView!
    
    @IBOutlet weak var fourthView: UIView!
    
    @IBOutlet weak var fifthview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fromGrtoAZ()
        fromGrtoGallary()
        fromAZtoGallary()
        fromAZtoGr()
        fromGallarytoAZ()
        fromGallarytoGR()
        
    }
    
    func fromGallarytoAZ() {
        NotificationCenter.default.addObserver(self, selector: #selector(gaToAZ), name: Notification.Name("az"), object: nil)

    }
    @objc func gaToAZ(){
        if (UIDevice.current.userInterfaceIdiom == .pad) {
            NotificationCenter.default.post(name: Notification.Name("hideNavigation"), object: nil)
            firstView.alpha = 0
            secondView.alpha = 1
            thirdView.alpha = 0
            fourthView.alpha = 0
            fifthview.alpha = 0
        } else if (UIDevice.current.userInterfaceIdiom == .phone) {
            firstView.alpha = 0
            secondView.alpha = 0
            thirdView.alpha = 0
            fourthView.alpha = 1
            fifthview.alpha = 0
        }
        NotificationCenter.default.post(name: Notification.Name("a"), object: nil)

        
    }
    func fromGallarytoGR() {

        NotificationCenter.default.addObserver(self, selector: #selector(gaToGr), name: Notification.Name("gr"), object: nil)
    }
    @objc func gaToGr(){
        if (UIDevice.current.userInterfaceIdiom == .pad) {
            NotificationCenter.default.post(name: Notification.Name("hideNavigation"), object: nil)
        firstView.alpha = 0
        secondView.alpha = 0
        thirdView.alpha = 1
        fourthView.alpha = 0
        fifthview.alpha = 0
           
        } else if (UIDevice.current.userInterfaceIdiom == .phone) {
            firstView.alpha = 0
            secondView.alpha = 0
            thirdView.alpha = 0
            fourthView.alpha = 0
            fifthview.alpha = 1
        }
        NotificationCenter.default.post(name: Notification.Name("b"), object: nil)

    }
    
    func fromAZtoGallary() {

        NotificationCenter.default.addObserver(self, selector: #selector(azToGa), name: Notification.Name("aztoga"), object: nil)
    }
    @objc func azToGa(){
        firstView.alpha = 1
        secondView.alpha = 0
        thirdView.alpha = 0
        fourthView.alpha = 0
        fifthview.alpha = 0
        NotificationCenter.default.post(name: Notification.Name("c"), object: nil)

    }
    func fromAZtoGr() {

        NotificationCenter.default.addObserver(self, selector: #selector(azToGr), name: Notification.Name("aztogr"), object: nil)
    }
    @objc func azToGr(){
        if (UIDevice.current.userInterfaceIdiom == .pad) {
            NotificationCenter.default.post(name: Notification.Name("hideNavigation"), object: nil)
        firstView.alpha = 0
        secondView.alpha = 0
        thirdView.alpha = 1
        fourthView.alpha = 0
        fifthview.alpha = 0
            
        } else if (UIDevice.current.userInterfaceIdiom == .phone) {
            firstView.alpha = 0
            secondView.alpha = 0
            thirdView.alpha = 0
            fourthView.alpha = 0
            fifthview.alpha = 1
        }
        NotificationCenter.default.post(name: Notification.Name("b"), object: nil)

    }
    
    func fromGrtoAZ() {

        NotificationCenter.default.addObserver(self, selector: #selector(grToAZ), name: Notification.Name("grtoaz"), object: nil)
    }
    @objc func grToAZ(){
        if (UIDevice.current.userInterfaceIdiom == .pad) {
            NotificationCenter.default.post(name: Notification.Name("hideNavigation"), object: nil)
        firstView.alpha = 0
        secondView.alpha = 1
        thirdView.alpha = 0
        fourthView.alpha = 0
        fifthview.alpha = 0
           
        } else if (UIDevice.current.userInterfaceIdiom == .phone) {
            firstView.alpha = 0
            secondView.alpha = 0
            thirdView.alpha = 0
            fourthView.alpha = 1
            fifthview.alpha = 0
        }
        NotificationCenter.default.post(name: Notification.Name("a"), object: nil)

    }
    func fromGrtoGallary() {

        NotificationCenter.default.addObserver(self, selector: #selector(grToGa), name: Notification.Name("grtoga"), object: nil)
    }
    @objc func grToGa(){
        firstView.alpha = 1
        secondView.alpha = 0
        thirdView.alpha = 0
        fourthView.alpha = 0
        fifthview.alpha = 0
        NotificationCenter.default.post(name: Notification.Name("c"), object: nil)

    }
    
    func reload() {
        firstView.alpha = 1
        secondView.alpha = 0
        thirdView.alpha = 0
        fourthView.alpha = 0
        fifthview.alpha = 0

        NotificationCenter.default.post(name: Notification.Name("c"), object: nil)

    }
   
    

  

}
