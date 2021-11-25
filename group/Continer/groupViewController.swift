//
//  groupViewController.swift
//  group
//
//  Created by Hamed Amiry on 24.11.2021.
//

import UIKit

class groupViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    lazy var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource  = self
        segmentt()
        register()
    }
    

    @IBAction func tappedSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            NotificationCenter.default.post(name: Notification.Name("grtoga"), object: nil)

            
        } else if sender.selectedSegmentIndex == 1{
            NotificationCenter.default.post(name: Notification.Name("grtoaz"), object: nil)

            
        } else if sender.selectedSegmentIndex == 2 {
            
        }
    }
    
    func segmentt() {
        NotificationCenter.default.addObserver(self, selector: #selector(gaToAZ), name: Notification.Name("b"), object: nil)
    }
    @objc func gaToAZ() {
        segment.selectedSegmentIndex = 2
    }
    
    
    func register() {
        tableview.register(UINib(nibName: "GroupTableViewCell", bundle: nil), forCellReuseIdentifier: "GroupTableViewCell")
    }

}

extension groupViewController: UITableViewDelegate, UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.groupAarry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupTableViewCell", for: indexPath) as! GroupTableViewCell
        cell.thelabel.text = viewModel.groupAarry[indexPath.row]
        
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "splitViewController") as! splitViewController
        vc.texxt = viewModel.groupAarry[indexPath.row]
        if (UIDevice.current.userInterfaceIdiom == .pad) {
            splitViewController?.showDetailViewController(vc, sender: nil)
            
            
        } else if (UIDevice.current.userInterfaceIdiom == .phone) {
            navigationController?.pushViewController(vc, animated: true)
            
            
        }
    }
    
    
    
}
