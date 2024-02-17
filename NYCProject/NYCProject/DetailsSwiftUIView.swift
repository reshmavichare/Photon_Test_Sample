//
//  DetailsSwiftUIView.swift
//  NYCProject
//
//  Created by Reshma Dhomse on 2/16/24.
//

import SwiftUI

struct DetailsSwiftUIView: View {
    @State var id: String
    @State var name:String
    @State var overviewparagraph :String
    
    var body: some View {
        VStack {
            Text(id)
            Text(name)
                .foregroundColor(.red)
            Text(overviewparagraph)
        } .offset(y:-195)
    }
}

//struct DetailsSwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsSwiftUIView()
//    }
//}
