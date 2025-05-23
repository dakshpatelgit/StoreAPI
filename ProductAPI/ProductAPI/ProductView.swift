import SwiftUI

struct ProductView: View {
    
    let viewModel = ProductViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.products) { product in
                NavigationLink {
                    ProductDetailView(product: product)
                } label: {
                    ProductRowView(product: product)
                }//: - NLink
            }//: - List
            .navigationTitle("Products")
        }//: - Nstack
        .task {
            await viewModel.fetchProducts()
        }
    }
}

#Preview {
    ProductView()
}
