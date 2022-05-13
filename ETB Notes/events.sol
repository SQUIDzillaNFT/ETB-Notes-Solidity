pragma solidity 0.6.0;

contract MyContract {
    event NewTrade (
        uint date,
        address indexed from,
        address indexed to,
        uint amount
    );

    funtion trade(address to, uint amount) external {
        emit NewTrade(now, msg.sender, to, amount);
    }
}




/*
with solidity events you can push data from inside out to users.
on 3 indexed per event... also the more the more gas costs on ethereum...
one way communication from the blockchain to the outside world