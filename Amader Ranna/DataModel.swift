//
//  MashModel.swift
//  Amader Ranna
//
//  Created by Md AfzaL Hossain on 3/10/17.
//  Copyright © 2017 Md AfzaL Hossain. All rights reserved.
//

import Foundation


class DataModel{
    private var _title: String!
    private var _upadanDetails: String!
    private var _karjoDetails: String!
    
    var title: String {
        return _title
    }
    
    var upadanDetails: String {
        return _upadanDetails
    }
    
    var kajoDetails: String {
        return _karjoDetails
    }
    
    init(title: String,upadanDetail: String,karjoDetail: String) {
        self._title = title
        self._upadanDetails = upadanDetail
        self._karjoDetails = karjoDetail
    }
}
