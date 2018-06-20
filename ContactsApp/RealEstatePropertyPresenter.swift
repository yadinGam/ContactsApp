//
//  RealEstatePropertyPresenter.swift
//  ContactsApp
//
//  Created by yading on 19/06/2018.
//  Copyright © 2018 yading. All rights reserved.
//

import Foundation


class RealEstatePropertyPresenter: PropertyTableViewPresenterProtocol {
    
    var propertyList = [RealEstateProperty]()

    private weak var view: PropertyTableViewProtocol?
    
    required init(for view: PropertyTableViewProtocol) {
        self.view = view
    }

    func fatchProperties() {
        for i in 0...9 {
            propertyList.append(RealEstateProperty(adress: "yehuda \(i)", about: "5 bedrooms", image: "image\(i)"))
        }
        view?.set()
    }
    
    
    func deleteCell(at index: Int){
        print(index)
        if propertyList.count > index
        {
            propertyList.remove(at: index)
            view?.refreshTable()
        }
        
    }
    
}
