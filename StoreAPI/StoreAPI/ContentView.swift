import SwiftUI

struct ContentView: View {
    @StateObject var storeViewModel = StoreViewModel()
    var body: some View {
        NavigationStack{
            List{
                ForEach(storeViewModel.storeItems, id: \.id) { item in
                    VStack(alignment: .leading){
                        Text("Product \(item.title)")
                            .font(.title2)
                        Text("Description \(item.description)")
                            .lineLimit(2)
                            .font(.callout)
                            .fontWeight(.light)
                        Text("Rating: \(item.rating.rate)")
                    }
                }
            }
        }
        .task {
            await storeViewModel.fetchItems()
        }
    }
}

#Preview {
    ContentView()
}
