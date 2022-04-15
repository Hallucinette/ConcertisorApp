//
//  ContentView.swift
//  ChallengeDay19
//
//  Created by Amélie Pocchiolo on 19/02/2022.
//

import SwiftUI

struct ContentView: View {
   @State private var tempcelsius: Double = 0
    
    var tempkelvin: Double{
        let convertKelvin = Double(tempcelsius + 273.15)
        return convertKelvin
    }
    
    var tempfahrenheit: Double{
        let convertFar = Double(1.8 * tempcelsius) + 32
        return convertFar
    }

    
    var body: some View {
                
        NavigationView{
            Form{
                Section{
                    TextField("Temperature", value: $tempcelsius, format: .number)
                } header: {
                    Text("Celsius")}
                Section{
                    Text(tempfahrenheit, format: .number)
                } header: {
                    Text("Fahrenheit")}
                Section{
                    Text(tempkelvin, format: .number)
                } header: {
                    Text("Kelvin")}
                }
            .navigationTitle("Convers Temp")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
