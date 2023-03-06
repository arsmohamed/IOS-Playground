struct TableReservation {
    var name: String;
    let tableNumber: Int
    mutating func updateBooking (updateName: String) {
        name = updateName
    }
}
var johnBooking = TableReservation(name: "John" , tableNumber: 1)
print(johnBooking)
johnBooking.updateBooking(updateName: "Maria")
print(johnBooking)
