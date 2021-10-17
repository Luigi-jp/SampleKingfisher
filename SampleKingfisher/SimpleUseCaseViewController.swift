//
//  SimpleUseCaseViewController.swift
//  SampleKingfisher
//
//  Created by 佐藤瑠偉史 on 2021/10/17.
//

import UIKit
import Kingfisher

class SimpleUseCaseViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView! {
        didSet {
            imageView1.image = defaultImage
        }
    }
    @IBOutlet weak var imageView2: UIImageView! {
        didSet {
            imageView2.image = defaultImage
        }
    }
    @IBOutlet weak var imageView3: UIImageView! {
        didSet {
            imageView3.image = defaultImage
        }
    }
    @IBOutlet weak var imageView4: UIImageView! {
        didSet {
            imageView4.image = defaultImage
        }
    }
    @IBOutlet weak var imageView5: UIImageView! {
        didSet {
            imageView5.image = defaultImage
        }
    }
    @IBOutlet weak var imageView6: UIImageView! {
        didSet {
            imageView6.image = defaultImage
        }
    }
    @IBOutlet weak var imageView7: UIImageView! {
        didSet {
            imageView7.image = defaultImage
        }
    }
    @IBOutlet weak var imageView8: UIImageView! {
        didSet {
            imageView8.image = defaultImage
        }
    }
    
    @IBOutlet weak var loadButton: UIButton! {
        didSet {
            loadButton.addTarget(self, action: #selector(tapLoadButton(_:)), for: .touchUpInside)
        }
    }
    
    
    private let defaultImage = UIImage(named: "DefaultImage")
    
    private let urls = [
        URL(string: "https://1.bp.blogspot.com/-tVeC6En4e_E/X96mhDTzJNI/AAAAAAABdBo/jlD_jvZvMuk3qUcNjA_XORrA4w3lhPkdQCNcBGAsYHQ/s1048/onepiece01_luffy.png"),
        URL(string: "https://1.bp.blogspot.com/-rzRcgoXDqEg/YAOTCKoCpPI/AAAAAAABdOI/5Bl3_zhOxm07TUGzW8_83cXMOT9yy1VJwCNcBGAsYHQ/s1041/onepiece02_zoro_bandana.png"),
        URL(string: "https://1.bp.blogspot.com/-2ut_UQv3iss/X-Fcs_0oAII/AAAAAAABdD8/jrCZTd_xK-Y6CP1KwOtT_LpEpjp-1nvxgCNcBGAsYHQ/s1055/onepiece03_nami.png"),
        URL(string: "https://1.bp.blogspot.com/-mZpzgXC1Sxk/YAOTCAKwWTI/AAAAAAABdOM/5B4hXli0KLU5N-BySHgjVbhZscKLSE-bQCNcBGAsYHQ/s1025/onepiece04_usopp_sogeking.png"),
        URL(string: "https://1.bp.blogspot.com/-HPG_x7XPky8/X-FctLTLkKI/AAAAAAABdEE/xs4T8m0FiBAFptXHGQhQ2c9ZmVWtaeQSgCNcBGAsYHQ/s1028/onepiece05_sanji.png"),
        URL(string: "https://1.bp.blogspot.com/--9Rl2O4BBN0/X-Fct8K5mqI/AAAAAAABdEI/yLOziAqJO34fwn73AolVP0e42A2h-ql1QCNcBGAsYHQ/s992/onepiece06_chopper.png"),
        URL(string: "https://1.bp.blogspot.com/-JiNpsjnPn7g/X-FcuWcU37I/AAAAAAABdEQ/P5r3wBMTRegjl7njCk4zWBkdoay44-T2gCNcBGAsYHQ/s1151/onepiece07_robin.png"),
        URL(string: "https://1.bp.blogspot.com/-H8YBA_SpxGs/X-Fcu75hh_I/AAAAAAABdEU/WRKUa03ypYor3TwvhziHAnSEcTN4Noq0gCNcBGAsYHQ/s1148/onepiece08_franky.png")
    ]
    
    private lazy var imageViews = [imageView1, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func tapLoadButton(_ sender: UIButton) {
        urls.enumerated().map { ($0.element, imageViews[$0.offset]) }.forEach {
            guard let url = $0.0, let imageView = $0.1 else { return }
            imageView.kf.indicatorType = .activity
            imageView.kf.setImage(with: url, placeholder: defaultImage)
        }
    }
}
