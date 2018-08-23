import Foundation

class Cells {
    var id:Int
    var type:Int
    var message:String
    var typefield:Int
    var hidden:Bool
    var topSpacing:Int
    var show:Int
    var required:Bool
    
    init( id:Int, type:Int, message:String, typefield:Int, hidden:Bool, topSpacing:Int, show:Int, required:Bool) {
        self.id = id
        self.type = type
        self.message = message
        self.typefield = typefield
        self.hidden = hidden
        self.topSpacing = topSpacing
        self.show = show
        self.required = required
    }
}
