//
//  RPAnnotationFactoryTest.swift
//  R-P-chalangeTests
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import XCTest
@testable import R_P_chalange

class RPAnnotationFactoryTest: XCTestCase {
	private typealias TestableObject = RPAnnotationFactory
	
    func testToUniqueData() {
		var previusElements: [TestableObject.AnnotationType] = []
		for objectType in TestableObject.ObjectValue.allCases {
			let object1 = TestableObject.newAnnotation(for: objectType)
			let object2 = TestableObject.newAnnotation(for: objectType)
			XCTAssertEqual(object1, object2)
			XCTAssertFalse(previusElements.contains(object1))
			previusElements.append(object1)
		}
    }
}
