pragma solidity 0.6.0;
import 'ContractB.sol';
contract A {
    // 1. call function of other contract - calling contract B from contract A
    // 2. import keyword - source code are not in same file. 
    // 3. contract interface - min req information for smart contract to interact with another
    // 4. error propagation - how it works when one calls another

        //1. interface of B => B - since same file we jsut need to reference B
        //2. address of B - for this create variable in A and a funciton
    // first deploy B, after Deploy A, then finally set addres of B inside A
        address addressB;

    funtion setAddressB(address _addressB) external {
        addressB = _addressB;
    }

        //crate a function inside A that will call the hello world
        //funtion of contract B
/*
    create pointer to "B" contract- declare type of variable (use name of
    smart contract.) then give variable name "b".. uppercase "B" again ( interface of smart contract)
    in perenteces we specify the address - we have this address in address
    B variable** 
    now with b pointer we are able to call everything in our B contract

    all this interacting is used alot- even a transfer function would be calling the IERC contract within 
    an entire token contract ( flattened contracts are great example) but multi contracts are exactly the same with the import Yourname.sol;
*/
    function callHelloWorld() external view returns(string memeory) {
        B b = B(addressB);
        //if we had an arguement you would pass it here in the ()
        return b.helloWorld();

    }

}

contract B {
    // simple returns a sstatic string
    function helloWorld() external pure returns(string memory) {
        return 'hello world';
    }

}


//-------------------------------------------------------------------//-
// external deployed contract 

pragma solidity 0.6.0;

contract InterfaceB {
    function helloWorld() external pure returns(string memory);
    function foo() external; // only need to include the functions you need, if you didnt need "foo" it can be left out. 
}

contract B {
    // simple returns a sstatic string
    function helloWorld() external pure returns(string memory) {
        return 'hello world';
    }

    function foo() external {
    // whatever you have for function just copy the signature line above and terminate with semicolon
    }

}