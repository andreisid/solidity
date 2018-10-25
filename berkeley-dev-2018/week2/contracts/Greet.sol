pragma solidity ^0.4.23;

contract Greeter{
    string greetString;
    
    constructor(string g) public {
        greetString=g;
    }
    
    function setGreet(string g) public {
        greetString=g;
    }
    
    function greet() public view returns (string){
        return greetString;
    }
}

