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
        
        //custom binding
        let radiusBinding = Binding(get: {
            return self.radius
        }, set: { newRadius in
            self.radius = newRadius
            self.slantHeight = (radius * radius + height * height).squareRoot()
            self.height = (slantHeight * slantHeight - radius * radius).squareRoot()
        })
        
        let heightBinding = Binding(get: {
            return self.height
        }, set: { newHeight in
            self.height = newHeight
            self.slantHeight = (radius * radius + height * height).squareRoot()
            self.radius = (slantHeight * slantHeight - height * height).squareRoot()
        })
        
        let slantHeightBinding = Binding(get: {
            return self.slantHeight
        }, set: { newSlantHeight in
            self.slantHeight = newSlantHeight
            self.height = (slantHeight * slantHeight - radius * radius).squareRoot()
            self.radius = (slantHeight * slantHeight - height * height).squareRoot()
        })
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 25) {
                
                // Input
                Text("Radius:")
                    .bold()
                
                Group {
                    
                    HStack {
                        Spacer()
                        Text("\(String(format: "%.2f", radius))")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    
                    Slider(value: radiusBinding,
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
                        Text("\(String(format: "%.2f", slantHeight))")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    
                    Slider(value: slantHeightBinding,
                           in: height...50.0,
                           step: 0.5,
                           label: {
                        Text("Slant Height")
                    },
                           minimumValueLabel: {
                        Text("\(String(format: "%.2f", height))")
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
                        Text("\(String(format: "%.2f", height))")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    
                    Slider(value: heightBinding,
                           in: 0.0...slantHeight,
                           step: 0.5,
                           label: {
                        Text("Height")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("\(String(format: "%.2f", slantHeight))")
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
