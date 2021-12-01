//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Judy Yu on 2021-12-01.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stored Properties
    //"radius" is the name
    //"Double" is the data type
    //providing default value of 15.00
    //Input- from the user, we want to update the interface bases on the value selected by the user
    //
    //@State: SwiftUI should watch for changes
    //
    @State var radius: Double = 15.00
    
    //MARK: Computed Properties
    var area: Double {
        return Double.pi + radius * radius
    }
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(radius)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                // syntax of $- use this property (radius) and bind it to this control
                Slider(value: $radius,
                       in: 0.0...50.0,
                       step: 0.5,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("50.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area) square units")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
