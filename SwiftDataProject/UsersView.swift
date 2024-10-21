//
//  UsersView.swift
//  SwiftDataProject
//
//  Created by Juan Carlos Robledo Morales on 21/10/24.
//

import SwiftData
import SwiftUI



struct UsersView: View {
    @Query var users: [User]
    @State private var showingUpcomingOnly = false


    var body: some View {
        List(users) { user in
            Text(user.name)
        }
    }
    

    init(minimumJoinDate: Date, sortOtder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User> { user in
            user.joinDate >= minimumJoinDate
        }, sort: sortOtder)
    }

}

#Preview {
    UsersView(minimumJoinDate: .now, sortOtder: [SortDescriptor(\User.name)])
        .modelContainer(for: User.self)
}
