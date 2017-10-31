pragma solidity ^0.4.0;

contract FirstFunctions{
    
    string word;
    uint number;
    address owner;
    
    function FirstFunctions(){
        word = "Bird";
        number = 42;
        owner = msg.sender;
    }
    
    event changed(address _address);

    modifier onlyOwner{
        /*if(msg.sender != owner){
            throw;
        }*/
        require(msg.sender == owner); 
        _;
    }
    
    function getWord() constant returns (string){
        return word;
    } 
    
    function getNumber() constant returns (uint){
        return number;
    }
    
    function setWord(string _word) onlyOwner{
        word = _word;
        changed(msg.sender);
    }
    
    function setNumber(uint _number) onlyOwner{
        number = _number;
        changed(msg.sender);
    }
    
}