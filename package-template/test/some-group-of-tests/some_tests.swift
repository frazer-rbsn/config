import Testing
@testable import PackageTemplate

struct UnitTest {

	@Test("Test description")
	func testSomething() async throws {
		#expect(true, "This thing should be true!")
	}

	@Test("Test description", arguments: [5, 4, 3, 2, 1])
	func testSomethingParameterised(param: Int) async throws {
		#expect(param == param, "These things should be equal!")
	}
}
