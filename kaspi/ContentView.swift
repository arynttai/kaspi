import SwiftUI

struct ContentView: View {
    @State private var selectedSegment = 0
        @State private var searchText = ""
        @State private var selectedDate = Date()
        @State var name = ""

    var body: some View {
        VStack {
            HStack {
                Image("Menu")
                    .resizable()
                    .frame(width: 30, height: 25)
                Spacer()
                Text("Переводы")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.horizontal)

            Picker(selection: $selectedSegment, label: Text("")) {
                Text("Мои переводы").tag(0)
                Text("История").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .colorMultiply(.red)
            .padding(.horizontal)

            HStack{
                Image("Search")
                    .padding(.leading, 6)
                TextField("Имя, сумма, сообщение", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .background(Color.gray.opacity(0.1))
            }
            .padding()

            HStack{
                Image("Calendar")
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .foregroundColor(.accentColor)

                Text("9 Декабря - 16 Декабря")
            }
            .padding(.trailing, 130)
            transferView(amount: "1 234,00 ₸", dayOfTheMonth: "15 декабря", Name: "Batyr Sh.")
            transferView(amount: "123 456,00 ₸", dayOfTheMonth: "13 декабря", Name: "Zhanar M.")
            transferView(amount: "456,00 ₸", dayOfTheMonth: "12 декабря", Name: "Даниил Л.")
            transferView(amount: "23 456,00 ₸", dayOfTheMonth: "12 декабря", Name: "Маргарита Ш.")
            Spacer()

        }
    }
}
func transferView(amount: String, dayOfTheMonth: String, Name: String) -> some View {
    VStack {
        HStack {
            Text(dayOfTheMonth)
                .padding(.leading)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity)
                .font(.system(size: 15))
                .frame(height: 45)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.1))
                )

            Spacer()
        }

        HStack {
            Image("User")
                .font(.system(size: 33))
                .padding(.leading, 20)

            VStack(alignment: .leading) {
                Text("Kaspi Gold")

                HStack {
                    Image("Arrow")

                    Text(Name)
                }

                Text("Клиенту Kaspi")
                    .foregroundColor(.gray)
            }
            Spacer()

            Text(amount)
                .padding(.trailing)
        }

        Spacer()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

