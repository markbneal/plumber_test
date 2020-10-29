# How to host externally
# not so easy!

# external hosting
# see https://www.rplumber.io/articles/hosting.html
# and https://www.rplumber.io/#hosting
# and https://github.com/meztez/plumberDeploy

# Using Digital Ocean as host

# install.packages("analogsea")
# analogsea::key_create #didn't work for me
# or create ssh manually https://cloud.digitalocean.com/account/security

# install.packages("ssh")
# ssh::ssh_key_info()
# lapply(analogsea::keys(), '[[', "public_key")
# as it turns out, I'm able to use an existing ssh key that I created for github, and copied that into the digitalocean web portal to use, so didn't need to create one


#made "api" folder and "plumber.R" script in api folder

# #* @get /
# function() {
#   Sys.Date()
# }

#install.packages("plumberDeploy")
#remotes::install_github("https://github.com/meztez/plumberDeploy")

#id <- plumberDeploy::do_provision( example = FALSE) #note, close browser before running, so it can open a fresh browser instance for one-off verification
id <- plumberDeploy::do_provision("RevelatoryLineup", example = FALSE) #include droplet name if it already exists
### library(analogsea) # not necessary if "id" line worked
### droplet_create() # not necessary if "id" line worked #note, close browser before running, so it can open a fresh browser instance for one-off verification
### droplets()
plumberDeploy::do_deploy_api(id, "date", "./api/", 8000, docs = TRUE)

# current url
# 206.189.168.21

# should be able to access app by:
# Navigate to: [[IPADDRESS]]/date/__docs__/
# e.g. http://206.189.168.21/date/__docs__/ #this gives you curl and http request syntax
# or straight result
# http://206.189.168.21/date/
# or use curl: 
# curl -X GET "http://206.189.168.21/date/" -H "accept: */*"

analogsea::droplets()
# droplet_delete("RevelatoryLineup")



