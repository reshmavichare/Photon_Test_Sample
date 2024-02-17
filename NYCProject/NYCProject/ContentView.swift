//
//  ContentView.swift
//  NYCProject
//
//  Created by Reshma Dhomse on 2/16/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FetchDataViewModel ()
    @State var searchString: String = ""
    @State var modelData:[ModelStudent] = []
    
    func filterserachData(keyword:String){
        modelData  = viewModel.model.filter { filterstr in
            filterstr.dbn.contains(keyword)
        }
    }
    var store :[ModelStudent] {
        //store.isEmpty? viewModel.model : store
        modelData.isEmpty ?viewModel.model: modelData
    }
    var body: some View {
        NavigationView {
            List(store,id: \.id) { student in
                NavigationLink(destination: DetailsSwiftUIView(id: student.dbn, name: student.schoolname, overviewparagraph: student.overviewparagraph), label: {
                    
                VStack {
                Text(student.dbn)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                            
                Text(student.schoolname)
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.black)
                    .underline()
               Spacer()
//                Text(student.overviewparagraph)
//                    .font(.title)
//                    .fontWeight(.light)
//                    .foregroundColor(.black)
                }
                })
            } .navigationTitle("NYC Student")
            
//
        }
        .searchable(text: $searchString)
        .onChange(of: searchString, perform: filterserachData)
//        Text("Hello, world!")
//            .padding()
        
            .onAppear {
                viewModel.fetchApi()
            }
//        if viewModel.isLoading {
//            LoadingView()
//        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
