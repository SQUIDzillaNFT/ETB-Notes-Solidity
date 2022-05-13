pragma solidity 0.6.0;

contract Parent {
    uint data;

    constructor () public {

    }

}


//-----------------------------------------------------------------

pragma solidity 0.6.0;

contract Child is Parent {
    
    funtion bar() external {
        foo();
        data++;
    }
    
}