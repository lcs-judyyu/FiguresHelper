//
//  ConeView.swift
//  FiguresHelper
//
//  Created by Judy Yu on 2021-12-01.
//

import SwiftUI

struct ConeView: View {
    
    //MARK: Stored Properties
    @State var radius: Double = 10.0
    
    @State var slantHeight: Double = 10.0
    
    @State var height: Double = 10.0
    
    //MARK: Computed Properties
    var lateralSurface: Double {
        return Double.pi * radius * slantHeight
    }
    
    var baseArea: Double {
        return Double.pi * radius * radius
    }
    
    var totalSurfaceArea: Double {
        return baseArea + lateralSurface
    }
    
    var volume: Double {
       return (baseArea * height) / 3
    }
    
    
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
                
                Group {
                    
                    // Show the selected radius value
                    HStack {
                        Spacer()
                        Text("\(slantHeight)")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    
                    // syntax of $- use this property (radius) and bind it to this control
                    Slider(value: $slantHeight,
                           in: 0.0...50.0,
                           step: 0.5,
                           label: {
                        Text("Slant Height")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("50.0")
                    })

                }
                
                Group {
                    
                    // Show the selected radius value
                    HStack {
                        Spacer()
                        Text("\(height)")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    
                    // syntax of $- use this property (radius) and bind it to this control
                    Slider(value: $height,
                           in: 0.0...50.0,
                           step: 0.5,
                           label: {
                        Text("Height")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("50.0")
                    })

                }
                
                            
                // Output
                Text("Total Surface Area:")
                    .bold()
                
                Text("\(totalSurfaceArea) square units")
                    .font(.title2)
                
                Text("Volume:")
                    .bold()
                
                Text("\(volume) cube units")
                    .font(.title2)
                
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("Cone")
        }
}

struct ConeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ConeView()
        }
    }
}
