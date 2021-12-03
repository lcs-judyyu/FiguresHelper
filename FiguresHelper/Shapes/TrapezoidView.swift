//
//  TrapezoidView.swift
//  FiguresHelper
//
//  Created by Judy Yu on 2021-12-01.
//

import SwiftUI

struct TrapezoidView: View {
    
    //MARK: Stored Properties
    @State var height: Double = 4.0
    
    @State var sideA: Double = 6.0
    
    @State var sideB: Double = 12.0
    
    @State var sideC: Double = 5.0
    
    @State var sideD: Double = 5.0
    
    //MARK: Computed Properties
    
    var perimeter: Double {
        return sideA + sideB + sideC + sideD
    }
    
    var area: Double {
        return ((sideA + sideB) * height) / 2
    }
    
    var smallerSide: Double {
            if sideC <= sideD {
                return sideC
            } else {
                return sideD
            }
        }
        
        var body: some View {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Image("Trapezoid")
                        .resizable()
                        .scaledToFit()
                    
                    // Input
                    //height
                    VStack(alignment: .leading, spacing: 20) {
                        
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
                                   in: 0.0...smallerSide,
                                   step: 0.5,
                                   label: {
                                Text("Height")
                            },
                                   minimumValueLabel: {
                                Text("0.0")
                            },
                                   maximumValueLabel: {
                                Text("\(String(format: "%.2f", smallerSide))")
                            })
                            
                        }
                        
                        //side A
                        Text("Side a:")
                            .bold()
                        
                        Group {
                            
                            HStack {
                                Spacer()
                                Text("\(sideA)")
                                    .font(.title2)
                                    .bold()
                                Spacer()
                            }
                            
                            
                            Slider(value: $sideA,
                                   in: 0.0...50.0,
                                   step: 0.5,
                                   label: {
                                Text("Side a")
                            },
                                   minimumValueLabel: {
                                Text("0.0")
                            },
                                   maximumValueLabel: {
                                Text("50.0")
                            })
                            
                        }
                        
                        //side B
                        Text("Side b:")
                            .bold()
                        
                        Group {
                            
                            HStack {
                                Spacer()
                                Text("\(sideB)")
                                    .font(.title2)
                                    .bold()
                                Spacer()
                            }
                            
                            
                            Slider(value: $sideB,
                                   in: 0.0...50.0,
                                   step: 0.5,
                                   label: {
                                Text("Side b")
                            },
                                   minimumValueLabel: {
                                Text("0.0")
                            },
                                   maximumValueLabel: {
                                Text("50.0")
                            })
                            
                        }
                        
                        //side C
                        Text("Side c:")
                            .bold()
                        
                        Group {
                            
                            HStack {
                                Spacer()
                                Text("\(sideC)")
                                    .font(.title2)
                                    .bold()
                                Spacer()
                            }
                            
                            
                            Slider(value: $sideC,
                                   in: height...50.0,
                                   step: 0.5,
                                   label: {
                                Text("Side c")
                            },
                                   minimumValueLabel: {
                                Text("\(String(format: "%.2f", height))")
                            },
                                   maximumValueLabel: {
                                Text("50.0")
                            })
                            
                        }
                        
                        //side D
                        Text("Side d:")
                            .bold()
                        
                        Group {
                            
                            HStack {
                                Spacer()
                                Text("\(sideD)")
                                    .font(.title2)
                                    .bold()
                                Spacer()
                            }
                            
                            
                            Slider(value: $sideD,
                                   in: height...50.0,
                                   step: 0.5,
                                   label: {
                                Text("Side d")
                            },
                                   minimumValueLabel: {
                                Text("\(String(format: "%.2f", height))")
                            },
                                   maximumValueLabel: {
                                Text("50.0")
                            })
                            
                        }
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Output
                        Text("Perimeter:")
                            .bold()
                        
                        Text("\(perimeter) units")
                            .font(.title2)
                        
                        Divider()
                        
                        Text("Area:")
                            .bold()
                        
                        Text("\(area) square units")
                            .font(.title2)
                    }
                }
                .padding()
                .navigationTitle("Trapezoid")
            }
        }
    }
    
    struct TrapezoidView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                TrapezoidView()
            }
        }
    }
