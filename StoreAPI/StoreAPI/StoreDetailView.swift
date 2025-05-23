import SwiftUI

struct StoreDetailView: View {
    var product: StoreItem
    
    var body: some View {
        VStack(spacing: 16){
            AsyncImageView(asyncImage: product)
            
            Text(product.title)
                .font(.title2)
            
            Text(product.description)
                .font(.footnote)
                .foregroundStyle(.secondary)
            Spacer()
            
            
        }//: - Main Vstack
        .padding()
    }
}

#Preview {
    StoreDetailView(product: StoreItem.dummy)
}
