//
//  SchoolListView.swift
//  NYCHighSchools
//
//  Created by Amulya Gangam on 2/28/24.
//

import SwiftUI

struct SchoolListView: View {
    @ObservedObject var viewModel = SchoolViewModel()
    var body: some View {
        Text("Here is the list of schools")
        List(viewModel.schools, id: \.dbn) { school in
            NavigationLink(destination: SchoolDetailView(school: school)) {
                Text(school.school_name)
            }
        }
        .onAppear {
            viewModel.fetchSchools()
        }
    }
}

#Preview {
    SchoolListView()
}
