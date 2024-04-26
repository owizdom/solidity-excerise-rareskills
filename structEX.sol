
// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
contract StructsExample {

    struct Foo {
        uint256 a;
        uint256 b;
    }

    Foo[] public arrayFoo;

	// add new Foo into the array like this
	function addFooToArray(uint256 _a, uint256 _b) public {
		arrayFoo.push(Foo(_a, _b));
	}

	// read Foo element
	function readFooFromArray(uint256 _index) public view returns(Foo memory){
		return arrayFoo[_index];
	}

	// read individual variables in Foo element; Use the dot notation
	//function readFooA(uint256 _index) public view returns(uint256){
		//return arrayFoo[_index].a;
    function readFooA(uint256 _index) public view returns (uint256, uint256) {
        Foo memory foo = arrayFoo[_index];
        return (foo.a, foo.b);
}


	// modify individual variables in Foo element
	function modifyFooA(uint256 _index, uint256 _a) public{
		arrayFoo[_index].a = _a;
       
	}

	// modify Foo element
	function setFooAtIndex(uint256 _index, uint256 _a, uint256 _b) public {
		arrayFoo[_index] = Foo(_a, _b);
	}	
}