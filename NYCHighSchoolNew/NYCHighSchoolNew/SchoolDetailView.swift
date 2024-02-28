//
//  SchoolDetailView.swift
//  NYCHighSchools
//
//  Created by Amulya Gangam on 2/28/24.
//

import SwiftUI

struct SchoolDetailView: View {
    let school: School
    
    var body: some View {
        Text(school.overview_paragraph)
            .padding()
            .navigationBarTitle(school.school_name)
    }
}

//#Preview {
//    SchoolDetailView(school: school)
//}
