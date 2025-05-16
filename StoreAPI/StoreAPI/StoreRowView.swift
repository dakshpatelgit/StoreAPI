import SwiftUI

struct StoreRowView: View {
    let items: StoreItem
    
    var body: some View {
        HStack{
            if let url = URL(string: items.image) {
                AsyncImage(url: url) { Image in
                    Image.resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 100, height: 100)
            }//: - AsyncImg
            VStack(alignment: .leading){
                Text("Name: \(items.title)")
                    .font(.headline)
                Text("Category: \(items.category)")
                    .font(.subheadline)
            }//: - Vstack
            .padding()
        }//: - Hstack
    }
}

#Preview {
    StoreRowView(items: StoreItem.dummy)
}
