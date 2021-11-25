//
//  splitViewController.swift
//  group
//
//  Created by Hamed Amiry on 24.11.2021.
//

import UIKit

class splitViewController: UIViewController {

    @IBOutlet weak var thelabel: UILabel!
    
    var context:Int!
    var texxt: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        hideNavigation()
        thelabel.text = texxt
        //navigationController?.setNavigationBarHidden(true, animated: true)

        // Do any additional setup after loading the view.
    }
    
    func custoninti(context:Int) {
        self.context = context
    }
    
    func hideNavigation() {
        NotificationCenter.default.addObserver(self, selector: #selector(hided), name: Notification.Name("hideNavigation"), object: nil)
    }

    @objc func hided() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
