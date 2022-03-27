//
//  ViewController.swift
//  SwiftGender
//
//  Created by Angelos Staboulis on 26/3/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:GenderCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GenderCell
        cell.btnGuesGender.addTarget(self, action: #selector(clickGuess(sender:)), for: .allEvents)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 900.0
    }
    @objc func clickGuess(sender:UIButton){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: 0, section: 0)
            let cell:GenderCell = self.tableView.cellForRow(at: indexPath) as! GenderCell
            self.viewModel.calculateGender(name: cell.txtName.text!) { gender in
                cell.txtGender.text = gender.gender!
                cell.txtCount.text = String(describing:gender.count!)
                cell.txtProbability.text = String(describing:gender.probability!)
            }
        }
    }
    @IBOutlet var tableView: UITableView!
    var viewModel:ViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView()
        
        // Do any additional setup after loading the view.
    }
    
    
}
extension ViewController{
    func initialView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false
        viewModel =  ViewModel()
        
        
    }
}
