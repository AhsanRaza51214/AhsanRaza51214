// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Weekdays{
    enum Days{Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }
    Days public currentday;
    function setday(Days _day)public{
        currentday = _day;
    }
    
    function setMonday() public {
        currentday = Days.Monday;
    }
    
    function setTuesday() public {
        currentday = Days.Tuesday;
    }
    
    function setWednesday() public {
        currentday = Days.Wednesday;
    }
    
    function setThursday() public {
        currentday = Days.Thursday;
    }
    
    function setFriday() public {
        currentday = Days.Friday;
    }
    
    function setSaturday() public {
        currentday = Days.Saturday;
    }
    
    function setSunday() public {
        currentday = Days.Sunday;
    }

    function getCurrentDay() public view returns (string memory){
        if (currentday == Days.Sunday){
            return  "Holiday";
        }
        if (currentday == Days.Monday){
            return  "Monday";
        }
        else if (currentday == Days.Tuesday){
        return "Tuesday";
        }
        else if (currentday == Days.Wednesday){
        return "Wednesday";
        }
        else if (currentday == Days.Thursday){
        return "Thursday";
        }
        else if (currentday == Days.Friday){
        return "Firday";
        }
        else if (currentday == Days.Saturday){
        return "Saturday";
        }
        else {
            return "Invalid day";
        }
    }
}