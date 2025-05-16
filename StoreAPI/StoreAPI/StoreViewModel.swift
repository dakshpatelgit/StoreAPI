import Foundation

final class StoreViewModel: ObservableObject {
    @Published var storeItems: [StoreItem] = []
    
    func fetchItems() async {
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            print("Fetching Failed...")
            return
        }
        
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            let decodedResponse = try JSONDecoder().decode([StoreItem].self, from: data)
            storeItems = decodedResponse
            print(storeItems)
        } catch {
            print("Decoding Failed")
        }
    }
    
}//: - Class
