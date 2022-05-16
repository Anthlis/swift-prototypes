//
//  ContentView.swift
//  D19-Converter-Challenge
//
//  Created by Anthony Lister on 16/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var fromAmount = 0.0
    @State private var convertFromRate = "GBP"
    @State private var convertToRate = "EUR"
    @FocusState private var fromCurrencyIsFocused: Bool

    let convertPickerRates = ["GBP", "USD", "EUR", "INR"]
    let exchangeRateFor = ["GBP": 1, "USD": 0.81053798, "EUR": 0.85416915, "INR": 0.0104991]

    var convertToGBPRate: Double {
        return exchangeRateFor[convertFromRate, default:0]
    }

    var convertFromGBPRate: Double {
        return exchangeRateFor[convertToRate, default:0]
    }

    var convertedAmount: Double {
        let newConv:Double = (fromAmount / convertToGBPRate) * convertFromGBPRate
        return newConv

    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $fromAmount, format: .currency(code: convertFromRate))
                } header: { Text("From Amount:")}
                    .keyboardType(.decimalPad)
                    .focused($fromCurrencyIsFocused)

                Section {
                    Picker("Rate", selection: $convertFromRate) {
                        ForEach(convertPickerRates, id: \.self)
                        {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: { Text("From Currency") }

                Section {
                    Picker("Rate", selection: $convertToRate) {
                        ForEach(convertPickerRates, id: \.self)
                        {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)

                }header: { Text("To Currency") }
                Section {
                    Text(convertedAmount, format: .currency(code: convertToRate))
                } header: { Text("To Amount:")}
            }
            .navigationTitle("Currency Convertor")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard)
                {
                    Spacer()
                    Button("Done")
                    {
                        fromCurrencyIsFocused = false
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
