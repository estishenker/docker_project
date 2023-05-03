echo "-----------------"
echo "please wait...alpcon is running now"

#download file from git repository
git clone https://github.com/estishenker/docker_project.git
ls
echo "pulling sucsses "
echo "-----------------"

#run simple_file.py and save result to filefromalpcon
python3 --version
cd docker_project/
python3 simple_file.py >filefromalpcon
echo "-----------------"
echo "result: 'filefromalpcon'"
cat filefromalpcon
echo "-----------------"
