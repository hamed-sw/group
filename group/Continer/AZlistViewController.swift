//
//  AZlistViewController.swift
//  group
//
//  Created by Hamed Amiry on 24.11.2021.
//

import UIKit

class AZlistViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    lazy var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // splitViewController?.style = .unspecified
        tableView.delegate = self
        tableView.dataSource = self
        segmentt()
         register()
        titleIs()
    }
    func titleIs() {
        if UIDevice.current.userInterfaceIdiom == .pad {
            title = "AZList"
            navigationController?.navigationBar.backgroundColor = .gray
        }
    }
    

    @IBAction func tappedSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            NotificationCenter.default.post(name: Notification.Name("aztoga"), object: nil)

        } else if sender.selectedSegmentIndex == 1{
            
        } else if sender.selectedSegmentIndex == 2 {
            NotificationCenter.default.post(name: Notification.Name("aztogr"), object: nil)
            
        }
    }
    func segmentt() {
        NotificationCenter.default.addObserver(self, selector: #selector(gaToAZ), name: Notification.Name("a"), object: nil)
    }
    @objc func gaToAZ() {
        segment.selectedSegmentIndex = 1
    }
    
    func register() {

        tableView.register(UINib(nibName: "AZlistTableViewCell", bundle: nil), forCellReuseIdentifier: "AZlistTableViewCell")
    }

}

extension AZlistViewController: UITableViewDelegate, UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.groupAarry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AZlistTableViewCell", for: indexPath) as! AZlistTableViewCell
        cell.theLabel.text = viewModel.groupAarry[indexPath.row]
        
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
