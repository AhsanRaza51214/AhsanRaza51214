// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract BookingSite {
    enum bookingTypes{
        Bus,Airline,Cricket,Cinema,Railway
    }

    struct userinfo{
        string name;
        uint uid;
        address addr;
        string contact;
    }
    struct busbooking{
        string time;
        string bustype;
        string busdestination;
        uint8 setno;
        bool cnfrm;
    }
    struct Airlinebooking{
        string time;
        string airtype;
        string airdestination;
        uint8 setno1;
        bool cnfrm1;
    }
    struct cricketbooking{
        string Date;
        string matchno;
        uint8 seatno2;
    }
    struct cinemabooking{
        string moviename;
        string time;
        uint8 seatno;
    }
    struct railwaybooking{
        string time;
        string railtype;
        string destination;
        uint8 seatno4;
    }
    struct booking{
        uint bookingId;
        bookingTypes bookingTypes;
        userinfo User;
        busbooking BusBooking;
        cinemabooking CinemaBooking;
        Airlinebooking AirlineBooking;
        railwaybooking RailwayBooking;
        cricketbooking CricketBooking;
    }
    // uint256 private bookingCounter;
    // mapping(uint256 => Booking) public booking;
}