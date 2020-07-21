//
//  ContentView.swift
//  CountryList
//
//  Created by Mickael Mas on 21/07/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI
import CountryKit

struct ContentView: View {
    
    var counties = CountryKit().countries
    
    var body: some View {
        NavigationView {
            List(counties, id: \.countryCode) { country in
                HStack {
                    Text(country.emoji)
                    Text(country.name)
                    Spacer()
                    Text("+\(country.countryCode ?? 0)")
                }
            }.navigationBarTitle("Pays")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
