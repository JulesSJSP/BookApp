import SwiftUI

struct ContentView: View {
    @State var taskName: String = ""
    
    var body: some View {
        NavigationStack {
            
            TabView {
                
                HomeView().tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                
                LibraryView().tabItem {
                    Image(systemName: "books.vertical")
                    Text("Library")
                }
                
                
                BookStoreView().tabItem {
                    Image(systemName: "bag.fill")
                    Text("Book Store")
                }
                
                
                AudiobooksView().tabItem {
                    Image(systemName: "headphones")
                    Text("Audiobooks")
                }
                
                
                SearchView(taskName: $taskName).tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            }
            .navigationTitle("Search")
        }
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            Text("")
        }
    }
}

struct LibraryView: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct BookStoreView: View {
    var body: some View {
        VStack {
            Text("")
        }
    }
}


struct AudiobooksView: View {
    var body: some View {
            Text("")
        }
    }


struct SearchView: View {
    @Binding var taskName: String
    
    @State private var searchItems: [String] = [
           "gratis", "will packer", "susan morrison", "the lexington letter",
           "the body keeps the score", "never split the difference", "how to win friends & influence people ", " the 48 laws of power" ,"if she knew", "the you you are"
       ]

    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.leading, 8)
                
                TextField("Books & Audiobooks", text: $taskName)
                    .padding(.vertical, 8)
                    .padding(.leading, 8)
                    .background(Color.gray.opacity(0))
                    .frame(height: 36)
                    
                Image(systemName: "mic.fill")
                    .foregroundColor(.gray)
                    .padding(.trailing, 8)
            }
            .padding(.horizontal, 0)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            
            .padding([.horizontal, .top], 8)
            
            Text("Trending")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 20)
            
            List(searchItems, id: \.self) { item in
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    Text(item)
                        .foregroundColor(.primary)
                }
                .padding(.vertical, 5)
            }
            .listStyle(PlainListStyle())
            
            Text("Learn more about search results >").foregroundColor(.gray)
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
