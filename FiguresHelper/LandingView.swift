//
//  LandingView.swift
//  FiguresHelper
//
//  Created by Judy Yu on 2021-12-01.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            List {
                Section(header: Text("2D Shapes"))  {
                    
                    NavigationLink(destination: {
                        
                        CircleView()
                        
                    }, label: {
                        Label(title: {
                            Text("Circle")
                        }, icon: {
                            Image(systemName: "circle")
                        })
                    })
                }
                .headerProminence(.increased)
                    
                Section(header: Text("3D Shapes"))  {
                    NavigationLink(destination: {
                        
                        ConeView()
                        
                    }, label: {
                        Label(title: {
                            Text("Cone")
                        }, icon: {
                            Image(systemName: "cone")
                        })
                    })
                }
                .headerProminence(.increased)
            }
            .listStyle(.plain)
            
        }
        .padding(.horizontal, 20)
        .padding(.top, 10)
        .navigationTitle("Figures Helper")
        
        Spacer()
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandingView()
        }
    }
}
