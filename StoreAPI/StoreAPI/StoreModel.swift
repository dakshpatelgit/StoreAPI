import Foundation

struct StoreItem: Codable, Identifiable {
    var id: Int
    var price: Double
    var title, description, category, image: String
    var rating: Rate
    
    static var dummy: StoreItem {
        return StoreItem(id: 1, price: 109.95, title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                         description: "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
                         category: "men's clothing", image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
                         rating: Rate(rate: 3.9, count: 120))
    }
}

struct Rate: Codable {
    var rate: Double
    var count: Int
}
