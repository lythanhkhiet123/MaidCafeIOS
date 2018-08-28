//
//  webViewController.swift
//  Maid Cafe
//
//  Created by Khiet Ly on 28/8/18.
//  Copyright © 2018 Zhuofu Wang. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var webViewer: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.facebook.com/KurenaiMaidCafe/")
        
        webViewer.loadRequest(URLRequest(url: url!))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
