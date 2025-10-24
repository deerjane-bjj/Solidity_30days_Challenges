// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract SaveMyName{
    string name; //declare a variable with what data type it is 
    string bio;

    function add(string memory _name, string memory _bio) public{ //Memory means Temporary storage that only exists while the function is running.
        name= _name;
        bio= _bio;
    }

    function retrieve() public view returns(string memory,string memory) {  //Return is a reserved keyword
        return(name,bio);
    }
}
