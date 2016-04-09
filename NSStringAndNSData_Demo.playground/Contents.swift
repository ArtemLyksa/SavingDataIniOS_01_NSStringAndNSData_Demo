import UIKit

let fileManager = NSFileManager.defaultManager()

do {
    var documents = try fileManager.URLForDirectory(.DocumentDirectory, inDomain: .UserDomainMask, appropriateForURL: nil, create: false)
    print(documents)
    var url = NSURL(string: "quote.txt", relativeToURL: documents)
    let quote = "Four score and sever seven years ago"
    if let url = url {
        try quote.writeToURL(url, atomically: true, encoding: NSUTF8StringEncoding)
        var text = try String(contentsOfURL: url)
    }
} catch {
    print("error:\(error)")
}

if let coverAlbum = UIImage(named:"TSj6QWERGUI.jpg") {
    let imageData = UIImagePNGRepresentation(coverAlbum)

    do {
        
        var documents = try fileManager.URLForDirectory(.DocumentDirectory, inDomain: .UserDomainMask, appropriateForURL: nil, create: false)
        
        var url = NSURL(string: "TSj6QWERGUI.bin", relativeToURL: documents)
        
        imageData!.writeToURL(url!, atomically: true)
        
        if let imageData = NSData(contentsOfURL: url!) {
            let coverImage = UIImage(data: imageData)
        }
        
    }catch{
        print("error \(error)")
    }
}


