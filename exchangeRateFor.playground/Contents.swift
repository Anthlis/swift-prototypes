import SwiftUI
import PlaygroundSupport

let exchangeRateFor = [
    "NZD": 1,
    "USD": 0.81053798,
    "EUR": 0.85416915,
    "GBP": 0.0104991
]

var currencies: [String] {
    Array(exchangeRateFor.keys).sorted(by: <)
}

struct ExchangeRateView: View {
    @State private var convertFromRate = 0
    var body: some View {
        Picker("Rate", selection: $convertFromRate) {
            ForEach(currencies, id: \.self) { Text($0) }
        }.pickerStyle(.segmented)
    }
}

PlaygroundPage.current.setLiveView( ExchangeRateView().padding() )

