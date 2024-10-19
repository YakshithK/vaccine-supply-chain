// contracts/VaccineTracker.sol
pragma solidity ^0.8.0;

contract VaccineTracker {
    struct Vaccine {
        string batchId;
        uint timestamp;
        int temperature;
        address handler;
    }

    mapping(string => Vaccine) public vaccines;

    event TemperatureBreached(string batchId, int temperature);

    function logData(string memory _batchId, int _temperature) public {
        vaccines[_batchId] = Vaccine(_batchId, block.timestamp, _temperature, msg.sender);
        if (_temperature > 8 || _temperature < 2) {
            emit TemperatureBreached(_batchId, _temperature);
        }
    }

    function getVaccineData(string memory _batchId) public view returns (string memory, uint, int, address) {
        Vaccine memory v = vaccines[_batchId];
        return (v.batchId, v.timestamp, v.temperature, v.handler);
    }
}
