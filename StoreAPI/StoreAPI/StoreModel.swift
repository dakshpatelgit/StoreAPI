import Foundation

struct StoreItem: Codable {
    var id: Int
    var price: Double
    var title, description, category, image: String
    var rating: Rate
}

struct Rate: Codable {
    var rate: Double
    var count: Int
}
