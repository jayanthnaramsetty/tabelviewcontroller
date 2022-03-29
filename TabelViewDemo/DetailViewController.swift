//
//  DetailViewController.swift
//  TabelViewDemo
//
//  Created by Naramsetty,Jayanth on 3/29/22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var displaylabeloutlet: UILabel!
    var product : product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displaylabeloutlet.text = "The product \((product?.productName)!) is of \((product?.productCategory)!) Category"
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
