//
//  gallaryViewController.swift
//  group
//
//  Created by Hamed Amiry on 24.11.2021.
//

import UIKit

class gallaryViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    lazy var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        segmentt()
        register()

    }
    
    @IBAction func tappedSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            
        } else if sender.selectedSegmentIndex == 1{
            NotificationCenter.default.post(name: Notification.Name("az"), object: nil)

            
        } else if sender.selectedSegmentIndex == 2 {
            NotificationCenter.default.post(name: Notification.Name("gr"), object: nil)

        }
    }
    
    func segmentt() {
        NotificationCenter.default.addObserver(self, selector: #selector(gaToAZ), name: Notification.Name("c"), object: nil)
    }
    @objc func gaToAZ() {
        segment.selectedSegmentIndex = 0
    }
    
    
    func register() {
        tableView.register(UINib(nibName: "GallaryTableViewCell", bundle: nil), forCellReuseIdentifier: "GallaryTableViewCell")

    }
}

extension gallaryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.gallary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GallaryTableViewCell", for: indexPath) as! GallaryTableViewCell
        cell.gImage.image = UIImage(named: viewModel.gallary[indexPath.row])
        
        return cell
    }
    
    
}
