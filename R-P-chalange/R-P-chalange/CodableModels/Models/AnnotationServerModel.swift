//
//  AnnotationServerModel.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

class AnnotationServerModel: ICodableAnnotation {
	var anotationInfo: [String: String] = [:]
	
	//MARK: Equatable
	static func == (lhs: AnnotationServerModel, rhs: AnnotationServerModel) -> Bool {
		return (lhs === rhs) || (lhs.anotationInfo == rhs.anotationInfo)
	}
	
	//MARK: NSCopying
	func copy(with zone: NSZone? = nil) -> Any {
		let copy = AnnotationServerModel()
		copy.anotationInfo = self.anotationInfo
		return copy
	}
}
