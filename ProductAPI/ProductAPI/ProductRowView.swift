import SwiftUI

struct ProductRowView: View {
    let product: Product
    
    var body: some View {
        HStack(spacing: 8){
            if let url = URL(string: product.image){
                AsyncImage(url: url) { image in
                    image.resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 100, height: 100)
            }
            VStack(alignment: .leading, spacing: 8) {
                //Title
                Text(product.title)
                    .font(.headline)
                    .lineLimit(2)
                
                HStack{
                    //Category
                    Text(product.category)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    Spacer()
                    
                    HStack{
                        //Rating
                        Image(systemName: "star.fill")
                            .fontWeight(.medium)
                            .foregroundStyle(.yellow)

                        
                        Text(product.rating.rate.toString())
                            .fontWeight(.medium)
                            .foregroundStyle(.yellow)
                    }
                }
                //Description
                Text(product.description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                
                //Price and Buy Button
                HStack{
                    Text(product.price.currencyFormat())
                        .font(.title3)
                        .foregroundStyle(.indigo)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Buy")
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(.indigo)
                            .clipShape(Capsule())
                    }

                }
                
            }//: - Vstack
            
        }//: - Hstack
        .padding()

    }
}

#Preview {
    ProductRowView(product: Product.dummy)
}
