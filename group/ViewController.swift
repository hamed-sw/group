//
//  ViewController.swift
//  group
//
//  Created by Hamed Amiry on 23.11.2021.
//

import UIKit
struct models {
    var isactive: Bool = false
  //  var imagesss: UIImage
    let aplhpavit: String
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
  
    var aarry = [models]()
    
    var groupAarry = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var isActive:Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
       dddaaa()
        tableView.delegate = self
        tableView.dataSource = self
        register()
        barButton()
        hideNavigation()
        // Do any additional setup after loading the view.
    }
    func hideNavigation() {
        NotificationCenter.default.addObserver(self, selector: #selector(hided), name: Notification.Name("hideNavigation"), object: nil)
    }

    @objc func hided() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func dddaaa() {
        for  i in groupAarry {
            print(i)
            aarry.append(models(isactive: false, aplhpavit: i))
        }
    }

    func register() {
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.register(HeaderTableView.self, forHeaderFooterViewReuseIdentifier: "header")
    }
    
    
    func barButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "square.filled.on.square"), landscapeImagePhone: UIImage(systemName: "square.filled.on.square"), style: .plain, target: self, action: #selector(tapped))
    }
    @objc func tapped() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ContinerViewController") as! ContinerViewController
        navigationController?.pushViewController(vc, animated: false)
    }

}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        return cell
    }
    
    
    @objc func ddd(button: UIButton) {
        if aarry[button.tag].isactive == true {
            aarry[button.tag].isactive  = false
            print(aarry[button.tag].isactive )
            print(button.tag)
            tableView.reloadData()
        }else {
            aarry[button.tag].isactive  = true
            print(aarry[button.tag].isactive )

            print(button.tag)
            tableView.reloadData()

        }
        print("touch it")
  
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as! HeaderTableView
        // var image = UIImage()
        header.button.addTarget(self, action: #selector(ddd), for: .touchUpInside)
        header.button.tag = section
        if aarry[section].isactive == false {
            header.imageForward.image = UIImage(systemName: "chevron.forward")
            
        }else {
            header.imageForward.image = UIImage(systemName: "chevron.down")
        }
        header.label.text = aarry[section].aplhpavit
        
        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 0))
//        return footer
//    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return groupAarry.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 0
//    }
    
    
}
