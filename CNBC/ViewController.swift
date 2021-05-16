//
//  ViewController.swift
//  CNBC
//
//  Created by Miguel Pelayo Mercado Caram on 5/14/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, btnPressedProtocol {
  
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var indexes = ["NASDAQ", "DOW JONES", "S&P500"]
    
    override func viewDidLoad() {
        collectionView.dataSource = self
        collectionView.register(IndexCell.nib(), forCellWithReuseIdentifier: IndexCell.identifier)
        collectionView.collectionViewLayout = createCompositionalLayout()
    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return indexes.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IndexCell.identifier, for: indexPath) as? IndexCell
        cell?.title.text = indexes[indexPath.row]
        cell?.delegate = self
        return cell!
        
    }
    
    func btnPressed() {
        let navigationVC = DetailVC()
        navigationController?.pushViewController(navigationVC, animated: true)
        
    }
    
    func createCompositionalLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.90), heightDimension: .fractionalHeight(0.90))

        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2)

        let layoutGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95), heightDimension: .fractionalWidth(0.40))
        let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: layoutGroupSize, subitems: [layoutItem])
        

        let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
        layoutSection.orthogonalScrollingBehavior = .groupPagingCentered
        return UICollectionViewCompositionalLayout(section: layoutSection)
    }
    
}



