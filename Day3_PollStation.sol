//SPDX-License-Identifier:MIT
pragma solidity^0.8.0;

contract PollStation{
    string[] public candidateNames; //candidateNames is an array / list, not a dictionary
    mapping(string=>uint256)voteCount; //mapping(a data type) makes voteCount(the variable)becomes a dictionary

    function addCandidateNames(string memory _candidateNames)public{
        candidateNames.push(_candidateNames);
        voteCount[_candidateNames]=0;
    }

    function getcandidateNames()public view returns(string[]memory){
        return candidateNames;
    }

    function vote(string memory _candidateNames) public{
        voteCount[_candidateNames]+=1;
    }

    function getVote(string memory _candidateNames)public view returns(uint256){
        return voteCount[_candidateNames];
    }

}
