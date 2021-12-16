pragma solidity 0.8.6;
interface IReferral{
    event RegisteredReferer(address referee, address referrer);
    event RegisteredRefererFailed(address referee, address referrer, string reason);

    function hasReferrer(address addr) external view returns(bool);
    function getReferrer(address addr) external view returns(address);
    function getTotalRefferedCount(address referrer) external view returns(uint);
    function isCircularReference(address referrer, address referee) external view returns(bool);
    function addReferrer(address payable referrer) external returns(bool);

}
