//
//  StationDetailCollectionViewCell.swift
//  ios-subway-station
//
//  Created by jiinheo on 2021/12/27.
//

import UIKit
import SnapKit


final class StationDetailCollectionViewCell: UICollectionViewCell {
    private lazy var lineLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .bold)
    
        return label
    }()
    
    private lazy var remainTimeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .medium)
    
        return label
    }()
    
    func setup() {
        layer.cornerRadius = 12.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10
        
        
        backgroundColor = .systemBackground //쉐도우를 설정해도 기준값이 없기 때문에 잊지말고 설정해줘야함.
        
        [lineLabel, remainTimeLabel]
            .forEach{ addSubview($0) }
        lineLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview().inset(16.0)
        }
        remainTimeLabel.snp.makeConstraints{
            $0.leading.equalTo(lineLabel)
            $0.top.equalTo(lineLabel.snp.bottom).offset(16.0)
            $0.bottom.equalToSuperview().inset(16.0)
        }
        lineLabel.text = "왕십리-한양대방면"
        remainTimeLabel.text = "뚝섬 도착"
    }
}
