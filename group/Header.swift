//
//  Header.swift
//  group
//
//  Created by Hamed Amiry on 23.11.2021.
//

import UIKit

class HeaderTableView: UITableViewHeaderFooterView{
    static let indentifier = "HeaderTableView"
    
     let imageForward: UIImageView = {
        let imageView = UIImageView()
        //imageView.image = UIImage(systemName: "chevron.forward")
        return imageView
    }()
     let imageDown: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "chevron.down")
        return imageView
    }()
     let label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22)
        return label
    }()
    
    let button:UIButton = {
        let button = UIButton()
        
        return button
    }()

   
    
    override init(reuseIdentifier:String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        contentView.addSubview(label)
        contentView.addSubview(imageForward)
        //contentView.addSubview(imageDown)
        contentView.addSubview(button)
        backgroundColor = .red
        contentView.layer.cornerRadius = 10
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageForward.frame = CGRect(x: 5, y: 12, width: 30, height: 30)
        label.frame = CGRect(x: 40, y: 16, width: 200, height: 20)
        button.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: 50)

       // imageDown.frame = CGRect(x: 5, y: 8, width: 20, height: 20)
    }
    
    
    func config(text: String?, image: UIImage?) {
        label.text = text
        imageForward.image = image
    }
}
