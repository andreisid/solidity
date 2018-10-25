pragma solidity ^0.4.18;
// https://www.youtube.com/watch?v=6iiWwT0O2fY
// library for string manipulation 

library Strings{
        
        function concat(string _base, string _value) internal returns(string) {
            bytes memory _baseBytes = bytes(_base);  
            bytes memory _valueBytes = bytes(_value);
            
            string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
            bytes memory _newValue = bytes(_tmpValue);
            
            uint i;
            uint j;
            for (i=0; i<_baseBytes.length; i++) {
                _newValue[j++] = _baseBytes[i];
            }
            for (i=0; i<_valueBytes.length; i++) {
                _newValue[j++] = _valueBytes[i];
            }
            
            return string(_newValue);
        }   
    }
    
contract example {
    
    using Strings for string;
    
    function testConcat(string _base ) returns (string) {
        return _base.concat("_suffix");
    }

}

