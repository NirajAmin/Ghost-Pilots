import Foundation
import SpriteKit

// Created on game creation
public class GameData{
    var gameID = 00000
    var shipsToUpdate: [SpaceshipBase] = []
    
    // =================
    // For the Host to run
    
    public func CreateNewGame(){
        MultiplayerHandler.GenerateUniqueGameCode()
    }
    
    
    public func SetUniqueCode(code: Int){
        // we have created a code, we must now finish init game
        DataPusher.PushData(path: "Games/\(code)/\(UIDevice.current.identifierForVendor?.uuidString)", Value: "Null")
        DataPusher.PushData(path: "Games/\(code)/Status", Value: "Lobby")
    }
    
    // ==============
    // For guest to run

}
