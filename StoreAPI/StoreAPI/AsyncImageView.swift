import SwiftUI

struct AsyncImageView: View {
    var asyncImage: StoreItem
    
    var body: some View {
        if let url = URL(string: asyncImage.image){
            AsyncImage(url: url) { Image in
                Image.resizable()
                    .scaledToFit()
                    .frame(height: 300)
            } placeholder: {
                ProgressView()
            }

        }
    }
}

#Preview {
    AsyncImageView(asyncImage: StoreItem.dummy)
}
