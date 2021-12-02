//
//  ConeView.swift
//  FiguresHelper
//
//  Created by Judy Yu on 2021-12-01.
//

import SwiftUI

struct ConeView: View {
    
    //MARK: Stored Properties
    @State var radius: Double = 7.0
    
    @State var slantHeight: Double = 25.0
    
    @State var height: Double = 24.0
    
    //MARK: Computed Properties
//    var realSlantHeight: Double {
//        return (radius * radius + height * height).squareRoot()
//    }
//    if slantHeight <= height {
//        action = Text("This cone does not exist.")
//    }
    
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
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 25) {
                    
                    // Input
                    Text("Radius:")
                        .bold()
                    
                    Group {

                        HStack {
                            Spacer()
                            Text("\(radius)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        
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
                    

                    Text("Slant Height:")
                        .bold()
                    
                    Group {
                        
                        HStack {
                            Spacer()
                            Text("\(slantHeight)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        
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
                    
                    
                    Text("Height:")
                        .bold()
                    
                    Group {
                        
                        HStack {
                            Spacer()
                            Text("\(height)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }

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
                        Divider()

                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                    // Output
                    Text("Total Surface Area:")
                        .bold()
                    
                    Text("\(totalSurfaceArea) square units")
                        .font(.title2)
                    
                    Divider()
                    
                    Text("Volume:")
                        .bold()
                                    
                    Text("\(volume) cube units")
                        .font(.title2)
                    }
                }
                .padding()
                .navigationTitle("Cone")
            }
        }
}

struct ConeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ConeView()
        }
    }
}
