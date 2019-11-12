//
//  RPAnnotationFactory.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

class RPAnnotationFactory {
	
	//I used typealias because it helps to avoid static type when I test this class
	typealias AnnotationType = RPAnnotation
	
	//MARK: - Nested enum
	enum ObjectValue: CaseIterable {
		case empty
		case withAFakeData
	}
	
	//MARK: - public functions
	class func newAnnotation(for objectValue: ObjectValue) -> AnnotationType {
		switch objectValue {
		case .empty:
			return AnnotationType()
		case .withAFakeData:
			let returnValue = AnnotationType()
			returnValue.id = 14
			returnValue.parrentCommentId = 10
			returnValue.position = (1, 18)
			returnValue.text = "La-la-la-la"
			return returnValue
		}
	}
}
