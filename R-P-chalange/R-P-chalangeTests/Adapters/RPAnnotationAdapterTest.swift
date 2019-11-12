//
//  RPAnnotationAdapterTest.swift
//  R-P-chalangeTests
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import XCTest

@testable import R_P_chalange

class RPAnnotationAdapterTest: XCTestCase {

    private typealias TestableObject = RPAnnotationAdapter
	private typealias ObjectFactory = RPAnnotationFactory

    func testConvertEmptyValue() {
		let object = ObjectFactory.newAnnotation(for: .empty)
		let serverObject = TestableObject.serverAnnotation(from: object)
		let objectToCompare = TestableObject.rpAnnotation(from: serverObject)
		XCTAssertEqual(object, objectToCompare)
    }
	
	func testConvertNonEmptyValue() {
		let object = ObjectFactory.newAnnotation(for: .withAFakeData)
		let serverObject = TestableObject.serverAnnotation(from: object)
		let objectToCompare = TestableObject.rpAnnotation(from: serverObject)
		XCTAssertEqual(object, objectToCompare)
    }
}
