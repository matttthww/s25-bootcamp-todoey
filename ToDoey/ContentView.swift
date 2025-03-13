import SwiftUI

struct Todo: Identifiable {
    var id = UUID()
    var item: String
    var isDone: Bool
    }


struct ContentView: View {
    @State var todos: [Todo] = []
    @State private var selectedColor:Color = .yellow
    @State private var showInfoView = false
    @State var Taskname = "Todoey"
   
    var body: some View {
        
        ZStack{
            
            NavigationStack{
                List {
                    ForEach($todos) { $todo in
                        TodoRowView(todo: $todo)
                    }
                    .onDelete(perform: deleteItems)
                }
                .scrollContentBackground(.hidden)
                .listStyle(.inset)
               
                .foregroundColor(selectedColor)
               
                .toolbar{
                    
                    ToolbarItem(placement:.navigation){
                        HStack{Text(Taskname)
                                .foregroundColor(selectedColor)
                                .font(.largeTitle)
                                .minimumScaleFactor(0.5)
                            
                                .padding(.trailing,200)
        
                            Button(action:{showInfoView = true}){
                                Image(systemName:"info.circle")
                                    .foregroundStyle(selectedColor)
                                
                            }
                        }}
                    
                }
                .padding(20)
                .sheet(isPresented: $showInfoView){
                    InfoView(taskname: $Taskname, selectedColor: $selectedColor)
                }
                Button(action:{
                    let newitem=Todo(item:"",isDone:false)
                    todos.append(newitem)
                }){
                    HStack{
                        Image(systemName: "plus.circle.fill")
                            .foregroundStyle(selectedColor)
                        Text("New Reminder")
                            .foregroundStyle(selectedColor)
                            .bold()
                  
                    }
                    .padding(.trailing,200)
                    .padding(.bottom,50)
                    .font(.system(size: 20))
                   
                   
                    
                }
                
            }
        }

    }
    func deleteItems(at offsets: IndexSet){
        todos.remove(atOffsets: offsets)
    }

}

#Preview {
    ContentView()
}
