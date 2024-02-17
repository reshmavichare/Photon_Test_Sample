//
//  LoadingView.swift
//  NYCProject
//
//  Created by Reshma Dhomse on 2/16/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Rectangle ()
                .fill(.black)
                .opacity(0.75)
                ignoresSafeArea()
            VStack (spacing : 20 ) {
                ProgressView()
                Text("Loading ..")
            } .background {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.white)
                    .frame(width: 200, height: 200)
            }
            
        }.offset(y:-75)
    }
}

//struct LoadingView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoadingView()
//    }
//}
