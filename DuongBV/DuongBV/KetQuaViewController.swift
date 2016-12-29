//
//  KetQuaViewController.swift
//  DuongBV
//
//  Created by OceanMAC on 12/28/16.
//  Copyright (c) 2016 OceanMAC. All rights reserved.
//

import UIKit

class KetQuaViewController: UIViewController {
    var textKQ = String()
    @IBOutlet weak var lblKQ: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblKQ.text = textKQ + "/7"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
