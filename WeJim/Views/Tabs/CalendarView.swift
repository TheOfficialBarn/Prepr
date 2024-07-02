//
//  CalendarView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        VStack {
            Text("Calendar 🗓️")
                .font(.title2)
            Spacer()
            Text("Here, I would like to add a feature that allows you to schedule meals to be prepped from the home view.")
                .padding()
        }
    }
}

#Preview {
    CalendarView()
}
