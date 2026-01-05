
import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7" // @State = property wrapper that changes the behavior/changes the visual state
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .padding()
                    //.frame(maxHeight: .infinity, alignment: .top)
                    
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                .padding(35)

                Button {
                    deal()
                } label: {
                    Image("button")
                }


                
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(5)

                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(5)

                    }
                    Spacer()
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding(20)
                
            }
            
        }
        
        
    }
    
    // DEAL FUNCTION
    func deal() {
        //print("Deal Cards")
        // randomize player card
        let playerCardVal = String(Int.random(in: 2...14))
        playerCard = "card" + playerCardVal
        
        // randomize cpu card
        let cpuCardVal = String(Int.random(in: 2...14))
        cpuCard = "card" + cpuCardVal
        
        // update score
        if (playerCardVal > cpuCardVal) {
            playerScore += 1
        }
        
        else if (playerCardVal < cpuCardVal) {
            cpuScore += 1
        }
        
        else {
            print("Tie! No points.")
        }
    }
    
    
    
}


#Preview {
    ContentView()
}
