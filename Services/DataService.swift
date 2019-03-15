import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES" , imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Keehoo Beanie", price: "23", imageName: "hat01.png"),
        Product(title: "Keehoo Srini", price: "23", imageName: "hat02.png"),
        Product(title: "Keehoo babini", price: "23", imageName: "hat03.png"),
        Product(title: "Keehoo Sarini", price: "23", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Keehoo Hoodie 1", price: "23", imageName: "hoodie01.png"),
        Product(title: "Keehoo Hoodie 2", price: "23", imageName: "hoodie02.png"),
        Product(title: "Keehoo Hoodie 3", price: "23", imageName: "hoodie03.png"),
        Product(title: "Keehoo Hoodie 4", price: "23", imageName: "hoodie04.png")
    ]
    
    private let shorts = [
        Product(title: "Keehoo Shirt 1", price: "23", imageName: "shirt01.png"),
        Product(title: "Keehoo Shirt 2", price: "23", imageName: "shirt02.png"),
        Product(title: "Keehoo Shirt 3", price: "23", imageName: "shirt03.png"),
        Product(title: "Keehoo SHIT!! 4", price: "23", imageName: "shirt04.png"),
        Product(title: "Game Studio That really sucks", price: "23", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getProducts(forItem item: String) -> [Product] {
        switch item {
        case "SHIRTS" : return getShirts()
        case "HATS" : return getHats()
        case "HOODIES" : return getHoodies()
        case "DIGITAL" : return digitalGoods
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product] {
        return shorts
    }
}
