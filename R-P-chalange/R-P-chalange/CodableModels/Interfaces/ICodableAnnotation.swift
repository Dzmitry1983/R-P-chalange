//
//  ICodableAnnotation.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

//This has to support ServerApi
protocol ICodableAnnotation: IServerApiProtocol {
	//Why not? We have to have something that not equal with RPAnnotation
	var anotationInfo: [String: String] { get set }
}

