//
//  LandingView.swift
//  FiguresHelper
//
//  Created by Judy Yu on 2021-12-01.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Section(header: Text("2D shapes"))  {
                List {
                    NavigationLink(destination: {
                        
                        CircleView()
                        
                    }, label: {
                        Text("Circle")
                    })
                }
                .listStyle(.plain)
            }
            .headerProminence(.increased)
            
            Section(header: Text("3D shapes"))  {
                List {
                    NavigationLink(destination: {
                        
                        ConeView()
                        
                    }, label: {
                        Text("Cone")
                    })
                }
                .listStyle(.plain)
            }
            .headerProminence(.increased)
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding()
        .navigationTitle("Figures Helper")
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        LandingView()
        }
    }
}
