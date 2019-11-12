//
//  RPCommentAdapterTest.swift
//  R-P-chalangeTests
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import XCTest

@testable import R_P_chalange

class RPCommentAdapterTest: XCTestCase {
	
	private typealias TestableObject = RPCommentAdapter
	private typealias ObjectFactory = RPCommentFactory

    func testConvertEmptyValue() {
		let object = ObjectFactory.newComment(for: .empty)
		let serverObject = TestableObject.serverComment(from: object)
		let objectToCompare = TestableObject.rpComment(from: serverObject)
		XCTAssertEqual(object, objectToCompare)
    }
	
	func testConvertNonEmptyValue() {
		let object = ObjectFactory.newComment(for: .withAFakeData)
		let serverObject = TestableObject.serverComment(from: object)
		let objectToCompare = TestableObject.rpComment(from: serverObject)
		XCTAssertEqual(object, objectToCompare)
    }
}
