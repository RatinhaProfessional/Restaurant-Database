## Holo Spice - SQL database tailored for restaurant

**University case study featuring:** SQL database creation with and data insertion.

**SQL Queries:**
SELECT taable.tableID, taable.capacity FROM taable INNER JOIN restaurant WHERE restaurantName = 'Holo Spice';
--get a list of tables and it's capacity in particular restaurant--

SELECT reservation.dateStart, reservation.dateEnd, reservation.length, reservation.guestAmount, tablereservation.tableID
FROM customer 
INNER JOIN reservation on customer.customerID = reservation.customerID
INNER JOIN tablereservation on reservation.reservationID = tablereservation.reservationID
WHERE firstName = 'Nickolai' AND lastName = 'Henrot'
ORDER BY dateStart ASC
--get a list of all bookings for a given customer--

SELECT reservation.reservationID, reservation.dateStart, reservation.dateEnd, reservation.length, reservation.guestAmount, customer.firstName, customer.lastNAME
FROM reservation
INNER JOIN tablereservation on tablereservation.reservationID = reservation.reservationID
INNER JOIN customer on customer.customerID = reservation.customerID
WHERE tablereservation.tableID = '19' 
