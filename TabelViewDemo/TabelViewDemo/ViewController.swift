//
//  ViewController.swift
//  TabelViewDemo
//
//  Created by Naramsetty,Jayanth on 3/29/22.
//

import UIKit


class product{
    var productName : String?
    var productCategory : String?
    
    init(prodName : String, prodCategory :String){
        self.productName = prodName
        self.productCategory = prodCategory
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // return the cell with data
        // create cells dynamically
        var cell = tabelViewOutlet
            .dequeueReusableCell(withIdentifier: "reusablecell", for: indexPath)
        // Assign the data to the cell
        cell.textLabel?.text = productsArray[indexPath.row].productName
        // return cell
        return cell
    }
    
    var productsArray = [product]()
    @IBOutlet weak var tabelViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tabelViewOutlet.delegate = self
        tabelViewOutlet.dataSource = self
        
        let product1 = product(prodName:"MacbookAir",
                               prodCategory: "Laptop")
        productsArray.append(product1)
        
        let product2 = product(prodName:"iphone",
                               prodCategory: "phones")
        productsArray.append(product2)
        
        let product3 = product(prodName:"airprods pro",
                               prodCategory: "Accessories")
        productsArray.append(product3)
    
        let product4 = product(prodName:"iwatch",
                               prodCategory: "watch")
        productsArray.append(product4)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transitions = segue.identifier
        if transitions == "detailsSegue"{
            let destination = segue.destination as!
            DetailViewController
            
            
            destination.product = productsArray[(tabelViewOutlet.indexPathForSelectedRow?.row)!]
            
        }
    }


}

