pragma solidity ^0.4.18;
contract example {
  
    //function to calculate fibonacci(n)
    function fib(uint256 n) public returns(uint128){
        if (n==1){
            return 1;
        }
        if (n==0) {
            return 0;
        }
        return fib(n-1)+fib(n-2);
    }
    
    //implement xor functionality
    function xor(bool a, bool b) public pure returns (bool){
        if ((a && b) || (!a && !b)) return false;
        else return true;
    }

}
