//to run it on test network , select runtime environmrnt as "injected web3". it will automatically fetch the account from metamask.
//the transaction details can be seen in etherscan.io
pragma solidity >=0.7.0 <0.9.0;

contract Bank
{
    int bal;
    
    constructor() public
    {
        bal=100;
    }
    
    function getBalance() view public returns(int)
    {
        return bal;
    }
    
    function withdraw(int amt) public
    {
        bal=bal-amt;
    }
    
    function deposit(int amt) public
    {
        bal=bal+amt;
    }
}
