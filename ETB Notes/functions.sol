pragma solidity 0.6.0;

contract MyContract {
    uint value;
/*
    use _ before value when doing private view
    if using internal it has limited use but may be called by another
    contract with inheritance to this one**



    funtion _getValue() private view returns(uint) {
        return value;
    }


*/
    funtion getValue() external view returns(uint) {
        return value;
    }
//external get no underscore prefix, cannot be called inside, 
//public can be called anywhere... public can cause security issues

function setValue(uint _value) external {
        value = _value;
    }
}