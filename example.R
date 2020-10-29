#test plumber

# https://www.youtube.com/watch?v=Z2Aofr4UIFY


#* Get the sum of two numbers
#* @post /sum
function(x,y){
  as.numeric(x) + as.numeric(y)
}

#* @png
#* @get /plot
function() {
  barplot(1:10,col = "lightblue")
}

#* @get /date
function() {
  Sys.Date()
}
