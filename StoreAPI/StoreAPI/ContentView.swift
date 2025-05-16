import SwiftUI

struct ContentView: View {
    @StateObject var storeViewModel = StoreViewModel()
    var body: some View {
        NavigationStack{
            List(storeViewModel.storeItems){ item in
                StoreRowView(items: item)
            }
            .navigationTitle("Online Store")
        }
        .task {
            await storeViewModel.fetchItems()
        }
    }
}

#Preview {
    ContentView()
}
