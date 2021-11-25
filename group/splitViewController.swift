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
        thelabel.text = texxt
        //navigationController?.setNavigationBarHidden(true, animated: true)

        // Do any additional setup after loading the view.
    }
    
    func custoninti(context:Int) {
        self.context = context
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
