# docker_project
files:
simple_file.py: simple code in python that print list "names" 
Docker file - to create image is name "alpcon"
script.sh:
  build container "alpcon" from Dockerfile
  check if "alpcon" is running else start it and create volume in local
  when the the "alpcon" is beginnig it's run "internal_script"
internal_script do into "alpcon":
  1. cloning from github "simple_file.py"
  2. run "simple_file" and save results to "filefromalpcon"
  after play the "alpcon" in "script.sh"
  sleep 10 seconds
  after check:
  if "alpcon" is running 
  send message "failed" and kill "alpcon"
  else print success
