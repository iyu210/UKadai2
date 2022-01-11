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

    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.selectedSegmentIndex = 0
        label.text = "0.0"
    }

    @IBAction private func button(_ sender: Any) {
        let num1 = Double(upperTextField.text ?? "") ?? 0
        let num2 = Double(lowerTextField.text ?? "") ?? 0

        switch segmentedControl.selectedSegmentIndex {
        case 0: label.text = String(format: "%.1f", num1 + num2)
        case 1: label.text = String(format: "%.1f", num1 - num2)
        case 2: label.text = String(format: "%.1f", num1 * num2)
        case 3:
            if num2 == 0.0 {
                label.text = "割る数には0以外の数を入力してください。"
            } else {
                label.text = String(format: "%.1f", num1 / num2)
            }
        default:
            break
        }
    }
}
