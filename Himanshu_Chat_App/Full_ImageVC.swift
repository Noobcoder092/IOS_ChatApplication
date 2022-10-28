//
//  Full_ImageVC.swift
//  Himanshu_Chat_App
//
//  Created by Ongraph Technologies on 18/10/22.
//

import UIKit
import SDWebImage

class Full_ImageVC: UIViewController {

    @IBOutlet weak var selectedImage: UIImageView!
    
    var imageLink : String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let imageLink = imageLink else {
            return
        }
        DispatchQueue.main.async {
            self.selectedImage.sd_setImage(with: URL(string: "\(imageLink)"))
        }
        // Do any additional setup after loading the view.
    }

}
