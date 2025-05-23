import SwiftUI

struct AyncImageView: View {
    let imageURL: String
    
    var body: some View {
        if let url = URL(string: imageURL){
            AsyncImage(url: url) { Image in
                Image.resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }else{
            ProgressView()
        }//if-else
    }
}

#Preview {
    AyncImageView(imageURL: Product.dummy.image)
}
