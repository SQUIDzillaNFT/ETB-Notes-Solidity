pragma solidity 0.6.0;

contract MyContract {
    // 1. ehat happens when there is an error
    //2. throw
    //3. revert()
    //4. require() you can handle errors in normal life cycle, use assert for erros that never happen/find bugs
    //5. assert() - assert( a != 10) ** asssert that a is different than 10
    //6. error in other contracts

    uint a;
    funtion foo() external {
        a=10;
        //
        //throw keyword was first to throw in solidity outdated
        //revert('this is why it reverts') you can specify why and conditions
        //  ERROR
        //in (a == 10) {
        // revert ('this is message');
        }
        //   
    }




}