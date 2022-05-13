pragma solidity 0.6.0;

contract MyContract {
    // public, internal public - dont specify anything and its
    //private by default
    uint private a;

    funciton foo() external {
        uint b = a + 1;
    }
}


// solidity will take the public varialbe and uatomatically
// create a funtion internally, Note for any future errors