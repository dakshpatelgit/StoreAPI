import Foundation

@Observable class ProductViewModel {
    
    var products: [Product] = []
    private let manager = APIManger()
    
    func fetchProducts() async {
        do {
            products = try await manager.request(url: "https://fakestoreapi.com/products")
            print(products)
        } catch {
            print("Fetch product error", error)
        }
    }
}
