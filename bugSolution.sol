```solidity
function transfer(address _to, uint256 _value) public {
    require(balanceOf[msg.sender] >= _value, "Insufficient balance");
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
}

mapping(address => uint256) public balanceOf;

function balanceOf(address _owner) public view returns (uint256) {
    return balanceOf[_owner]; // Correct usage
}

event Transfer(address indexed _from, address indexed _to, uint256 _value);
```