variable "user_names" {
    description = "none"
    type = list(string)
    default = [ "neo"  , "park" ,"lee"]
  
}
//map형태 변수 선언
variable "hero_thousand_faces" {
    description =  "map"
    type =  map(string)
    default = {
      neo = "hero"
      trinity =  "love interest" 
      morpheus = "mentor"
    }
}