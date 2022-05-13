pragma solidity 0.6.0;

contract MyTransfer {
    function send(address payable to, uint amount) external {
        to.transfer(amount); // can specify 1 ether ect... default is wei.
    }
//recieve ether
    funtion recieve() external payable {
        msg.value // value recieved in wei
        address(this).balance // ether balance in wei
    }

    fallback() external {
        //executed if a funtion is called that doesnt exist. 
        // make it payable and you send ether inside this will aslo be executed 
    
    }

    recieve() external payable {
        // funtion here will be called if ether is sent and nothing is specified/called
    }

}