//
//  ReservationCalendar.swift
//  Little Lemon
//
//  Created by Amr Mohamed on 2023-03-01.
//

import SwiftUI

struct ReservationCalendar: View {
    @State var selectedDate = Date()
    var body: some View {
        Form{
            HStack {
                DatePicker (
//                   w "",
                    selection: $selectedDate,
                    in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ){}
                Button(action: {print("do something")}) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }
            }.padding(20)
            Text("Date is \(selectedDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
