pragma solidity 0.6.0;

contract FuntionModifiers {
    //1. modifier syntax - 
    //2. passing arguements
    //3. chaining modifiers
    //4. example for access control 
// below would be run as modifier one, modifier 2 then the actual code inside the myfunct
    /*

    address admin;

    */
    function myfunct(uint a) external myModifier1(a) myModifier2(a) {
        //code to do
    }

    modifier myModifier1(uint a) { // has to pass require statement
        require( a == 10, 'my error message');
        _;
    }

    modifier myModifier2(uint a) { // has to pass require statement
        require( a == 10, 'my error message');
        _;
    }

}

/* how it would go if you wanted to specify an admin address to be the one to call this only 


    funtion myfunct(uint a) external onlyAdmin() {

}

    modifier onlyAdmin() {
        require(msg.sender ==| admin, 'only admin');
        _;
    }
}


*/