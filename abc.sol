// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookingSite {

    enum BookingType { Bus, Cinema, Airline, Railway, Cricket }

    struct UserStruct {
        uint256 userID;
        string name;
        uint8 age;
        string contactDetails;
    }

    struct BusBookingStruct {
        string busNumber;
        string origin;
        string destination;
        uint256 dateOfJourney;
        uint8 seatNumber;
    }

    struct CinemaBookingStruct {
        string movieName;
        string cinemaHall;
        uint256 showTime;
        uint8 seatNumber;
    }

    struct AirlineBookingStruct {
        string flightNumber;
        string origin;
        string destination;
        uint256 dateOfJourney;
        string seatClass;
    }

    struct RailwayBookingStruct {
        string trainNumber;
        string origin;
        string destination;
        uint256 dateOfJourney;
        uint8 seatNumber;
    }

    struct CricketBookingStruct {
        string matchDetails;
        string stadium;
        uint256 matchDate;
        uint8 seatNumber;
    }

    struct BookingStruct {
        uint256 bookingID;
        BookingType bookingType;
        UserStruct user;
        BusBookingStruct busBooking;
        CinemaBookingStruct cinemaBooking;
        AirlineBookingStruct airlineBooking;
        RailwayBookingStruct railwayBooking;
        CricketBookingStruct cricketBooking;
    }

    uint256 private bookingCounter;
    mapping(uint256 => BookingStruct) public bookings;

    function bookBusTicket(
        uint256 _userID,
        string memory _name,
        uint8 _age,
        string memory _contactDetails,
        string memory _busNumber,
        string memory _origin,
        string memory _destination,
        uint256 _dateOfJourney,
        uint8 _seatNumber
    ) public {
        bookingCounter++;
        bookings[bookingCounter] = BookingStruct(
            bookingCounter,
            BookingType.Bus,
            UserStruct(_userID, _name, _age, _contactDetails),
            BusBookingStruct(_busNumber, _origin, _destination, _dateOfJourney, _seatNumber),
            CinemaBookingStruct("", "", 0, 0),
            AirlineBookingStruct("", "", "", 0, ""),
            RailwayBookingStruct("", "", "", 0, 0),
            CricketBookingStruct("", "", 0, 0)
        );
    }

    function bookCinemaTicket(
        uint256 _userID,
        string memory _name,
        uint8 _age,
        string memory _contactDetails,
        string memory _movieName,
        string memory _cinemaHall,
        uint256 _showTime,
        uint8 _seatNumber
    ) public {
        bookingCounter++;
        bookings[bookingCounter] = BookingStruct(
            bookingCounter,
            BookingType.Cinema,
            UserStruct(_userID, _name, _age, _contactDetails),
            BusBookingStruct("", "", "", 0, 0),
            CinemaBookingStruct(_movieName, _cinemaHall, _showTime, _seatNumber),
            AirlineBookingStruct("", "", "", 0, ""),
            RailwayBookingStruct("", "", "", 0, 0),
            CricketBookingStruct("", "", 0, 0)
        );
    }

    function bookAirlineTicket(
        uint256 _userID,
        string memory _name,
        uint8 _age,
        string memory _contactDetails,
        string memory _flightNumber,
        string memory _origin,
        string memory _destination,
        uint256 _dateOfJourney,
        string memory _seatClass
    ) public {
        bookingCounter++;
        bookings[bookingCounter] = BookingStruct(
            bookingCounter,
            BookingType.Airline,
            UserStruct(_userID, _name, _age, _contactDetails),
            BusBookingStruct("", "", "", 0, 0),
            CinemaBookingStruct("", "", 0, 0),
            AirlineBookingStruct(_flightNumber, _origin, _destination, _dateOfJourney, _seatClass),
            RailwayBookingStruct("", "", "", 0, 0),
            CricketBookingStruct("", "", 0, 0)
        );
    }

    function bookRailwayTicket(
        uint256 _userID,
        string memory _name,
        uint8 _age,
        string memory _contactDetails,
        string memory _trainNumber,
        string memory _origin,
        string memory _destination,
        uint256 _dateOfJourney,
        uint8 _seatNumber
    ) public {
        bookingCounter++;
        bookings[bookingCounter] = BookingStruct(
            bookingCounter,
            BookingType.Railway,
            UserStruct(_userID, _name, _age, _contactDetails),
            BusBookingStruct("", "", "", 0, 0),
            CinemaBookingStruct("", "", 0, 0),
            AirlineBookingStruct("", "", "", 0, ""),
            RailwayBookingStruct(_trainNumber, _origin, _destination, _dateOfJourney, _seatNumber),
            CricketBookingStruct("", "", 0, 0)
        );
    }

    function bookCricketTicket(
        uint256 _userID,
        string memory _name,
        uint8 _age,
        string memory _contactDetails,
        string memory _matchDetails,
        string memory _stadium,
        uint256 _matchDate,
        uint8 _seatNumber
    ) public {
        bookingCounter++;
        bookings[bookingCounter] = BookingStruct(
            bookingCounter,
            BookingType.Cricket,
            UserStruct(_userID, _name, _age, _contactDetails),
            BusBookingStruct("", "", "", 0, 0),
            CinemaBookingStruct("", "", 0, 0),
            AirlineBookingStruct("", "", "", 0, ""),
            RailwayBookingStruct("", "", "", 0, 0),
            CricketBookingStruct(_matchDetails, _stadium, _matchDate, _seatNumber)
        );
    }

    function getBooking(uint256 _bookingID) public view returns (BookingStruct memory) {
        return bookings[_bookingID];
    }

    function getTotalBookings() public view returns (uint256) {
        return bookingCounter;
    }
}
