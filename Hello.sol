pragma solidity ^0.4.0;

contract Hello {
    
    string name;
    
    function Hello(){
        name = "Mihail";
    }
    
    function sayHello() constant returns (string,string) {
        return ("Hello", name);
    }
    
    function setName(string _name){
        name = _name;
    }
    
}