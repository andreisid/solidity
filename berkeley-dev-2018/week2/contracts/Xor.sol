pragma solidity ^0.4.23;
//implement xor functionality
contract Xor{

    function xor(bool a, bool b) public pure returns (bool){
        if ((a && b) || (!a && !b)) return false;
        else return true;
    }

//An XOR function
//BONUS: Input a string of 1's and 0's, e.g. "10001110101101"
    function xorS(string a) pure public returns(bool) {
        bytes memory _bytesA = bytes(a);
        bool result=false;
        for (uint i=0; i<_bytesA.length;i++){
            if ((uint8(_bytesA[i])) == 48) result=xor(result,false);
            else result=xor(result, true);
        }
        return result;
    }
}
