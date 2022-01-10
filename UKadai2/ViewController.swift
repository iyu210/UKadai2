//
//  ViewController.swift
//  UKadai2
//
//  Created by 岩渕優児 on 2022/01/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var upperTextField: UITextField!
    @IBOutlet private weak var lowerTextField: UITextField!
    @IBOutlet private weak var label: UILabel!
    @IBOutlet weak private var segmentedControl: UISegmentedControl!
    var calcOption = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.segmentedControl.selectedSegmentIndex = 0
        self.label.text = "0.0"
    }
    @IBAction private func segmentedControlAction(_ sender: Any) {
        self.calcOption = segmentedControl.selectedSegmentIndex
    }
    @IBAction private func button(_ sender: Any) {
        let num1 = Double(upperTextField.text ?? "") ?? 0
        let num2 = Double(lowerTextField.text ?? "") ?? 0
        switch self.calcOption {
        case 0: self.label.text = String(format: "%.1f", num1 + num2)
        case 1: self.label.text = String(format: "%.1f", num1 - num2)
        case 2: self.label.text = String(format: "%.1f", num1 * num2)
        case 3: if num1 == 0.0 || num2 == 0.0 {
            self.label.text = "割る数には0以外の数を入力してください。"
        } else {
            self.label.text = String(format: "%.1f", num1 / num2)
        }
        default:
            break
        }
    }
}
