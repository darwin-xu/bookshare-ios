//
//  LibraryTableViewCell.swift
//  bookshare
//
//  Created by 许待文 on 2016/11/24.
//  Copyright © 2016年 darwin. All rights reserved.
//

import UIKit

class LibraryTableViewCell: UITableViewCell {

    @IBOutlet weak var category: UILabel!
    var bookNumber = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension LibraryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookNumber
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.backgroundColor = UIColor.black
        case 1:
            cell.backgroundColor = UIColor.red
        case 2:
            cell.backgroundColor = UIColor.yellow
        case 3:
            cell.backgroundColor = UIColor.gray
        case 4:
            cell.backgroundColor = UIColor.brown
        case 5:
            cell.backgroundColor = UIColor.gray
        case 6:
            cell.backgroundColor = UIColor.cyan
        case 7:
            cell.backgroundColor = UIColor.purple
        case 8:
            cell.backgroundColor = UIColor.green
        default:
            cell.backgroundColor = UIColor.blue
        }
        
        return cell
    }
}
