import SwiftUI

struct ContentView: View {
    
    @State
    private var navigationStore = NavigationStore()
    
    var body: some View {
        TabView(selection: $navigationStore.selectedTab) {
            NotesView()
                .tabItem {
                    Label("Notes", systemImage: "note.text")
                }
                .tag(Tab.notes)
            CapturesView()
                .tabItem {
                    Label("Captures", systemImage: "camera.aperture")
                }
                .tag(Tab.captures)
            MyDataView()
                .tabItem {
                    Label("My Data", systemImage: "person.text.rectangle")
                }
                .tag(Tab.myData)
            ContactsView()
                .tabItem {
                    Label("Contacts", systemImage: "person.crop.circle")
                }
                .tag(Tab.contacts)
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(Tab.settings)
        }
        .modifier(AuthHandlerViewModifier())
        .environment(navigationStore)
    }
}

#Preview {
    ContentView()
}
