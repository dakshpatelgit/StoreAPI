import SwiftUI

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        VStack(spacing: 16){
            AyncImageView(imageURL: product.image)
                .scaledToFit()
                .frame(height: 300)
            
            Text(product.title)
                .font(.headline)
            
            Text(product.description)
                .font(.footnote)
                .foregroundStyle(.secondary)
            
            // Rating
            HStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    
                    Text(product.rating.rate.toString() + " " + "Ratings")
                    
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 8,height: 8)
                    
                    Text("4.6k Reviews")
                    
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 8,height: 8)
                    
                    Text("4.5k Sold")
                }
                .font(.callout)
                .foregroundStyle(.secondary)
            }//: - Hstack Rating
            
            Spacer()
            
            // Price
            HStack{
                VStack(alignment: .leading, spacing: 8) {
                    Text("Total Price")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text(product.price.currencyFormat())
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.indigo)
                }
                .padding(.leading)
                
                Spacer()
                
                HStack(spacing: 0) {
                    Image(systemName: "cart.fill.badge.plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .frame(width: 50, height: 50)
                        .background(.indigo)
                    
                    Text("Buy Now")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width: 100, height: 50)
                        .background(Color(UIColor.darkGray))
                }
                .cornerRadius(15)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .padding(.trailing)
            }//: - Hstack Price
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .background(.gray.opacity(0.2))
            .clipShape(.buttonBorder)
        }//: - Main Vstack
        .padding()
    }
}

#Preview {
    ProductDetailView(product: Product.dummy)
}
