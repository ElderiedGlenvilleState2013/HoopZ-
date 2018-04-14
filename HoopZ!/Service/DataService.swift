//
//  DataService.swift
//  Practicing seque
//
//  Created by McKinney family  on 4/13/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import Foundation

class DataService {
    
    static let instances = DataService()
    
    private let categories = [Category(title: "Position Bio", imageName: "ballcartoon"),
                              Category(title: "Defender", imageName: "defense"),
                              Category(title: "Basketball Fundamentals", imageName: "dribblecartoon"),
                              Category(title: "Advance Drills", imageName: "balldunk"),
                              Category(title: "Meet The Coach", imageName: "justgetbetter"),
                              ]
    
    private let positionBio = [Product(title: "Point Guard", imageName: "pointguard", story: "PG distrubute the ball, scores, plays defense"), Product(title: "Shooting Guard", imageName: "Kobe", story: "SG are often times good scorers and amazing defenders"), Product(title: "Small Forward", imageName: "ballshot", story: "SF: they are blend of PF and SG, they are responsible for scoring and grabbing rebonds"), Product(title: "Power Forward", imageName: "defense", story: "PF are typically great rebonders, they are also a combination a SF and a Center"), Product(title: "Centers", imageName: "center", story: "Centers they are your last line of defense, they rebond, score in paint, great defenders, they are the force in the middle"),
                               ]
    
    private let defender = [Product(title: "Man to Man Defense", imageName: "defense", story: "Man to Man D: defensive players guard offensive player close"), Product(title: "Steals", imageName: "dribbleicon", story: "Steals: Occur when defenders knock or hit the ball away fromt he offensive play while they are dribbling"), Product(title: "2-3 Zone Defense", imageName: "dribblecartoon", story: "2-3 Zone: each player protect a zone area on the court"),
                            Product(title: "Blocks", imageName: "defense", story: "Blocks: occur when defender hit the ball away the offensive player that is in a shooting motion"),
                            ]
    
    private let basketballFundamentals = [Product(title: "Passing", imageName: "ballcartoon", story: "Bounce Pass, Over The Head Pass, Chest Pass"), Product(title: "Dribbling", imageName: "dribblecartoon", story: "Dribbling occur when the offensive player bounces the ball, crossovers is a form of dribbling"),
                                          Product(title: "Shooting", imageName: "freethrow", story: "Shooting is a form of scoring, you can shoot a close range, mid range, 3 pointers, layups"),
                                          ]
    
    private let advanceDrills = [Product(title: "Cross over", imageName: "dribblecartoon", story: "Cross-over: making a move off the dribble with the ball"),
                                 Product(title: "Dunks", imageName: "balldunk", story: "Dunking the ball occurs when the offensive player slams the ball in the hoop with a hand on the ball and rim"),
                                 Product(title: "Flashy Passes", imageName: "basketball", story: "Offensive Player can throw a no-look pass, behind the back pass, and bounce pass"),
                                 ]
    
    private let meetTheCoach = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
        
    func getBasketballProduct(forProductTitle title: String) -> [Product] {
        switch title {
        case "Position Bio":
            return getPositionBio()
        case "Defender":
           return getDefender()
        case "Basketball Fundamentals":
          return getBasketballFundamentals()
        case "Advance Drills":
           return getAdvanceDrills()
        default:
           return getPositionBio()
            
        }
        
    }
    
        func getPositionBio() -> [Product] {
            return positionBio
        }
        
        func getDefender() -> [Product] {
            return defender
        }
        
        func getBasketballFundamentals() -> [Product] {
            return basketballFundamentals
        }
        
    func getAdvanceDrills() -> [Product] {
        return advanceDrills
    }
        
    
    
                                    
    
    
}
