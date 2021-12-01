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
    var radius: Double = 15.00
    
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
                    Text("15.0")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: .constant(15.0),
                       in: 0.0...100.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area)")
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
