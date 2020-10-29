#how to run example

# ridiculously easy, see video:
# https://www.youtube.com/watch?v=Z2Aofr4UIFY

#install.packages("plumber")

#make "example.R" script

# enter below via console
library(plumber)
r <- plumb("example.R")
r$run(port = 8000)

# and above opens interactive tester, 
# or get results via curl at command prompt with this:
# curl --data "x=5&y=3" http://localhost:8000/sum
