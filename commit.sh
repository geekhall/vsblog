#########################################################
# filename : commit.sh
# author   : yinyang
# version  : v1.0.0
# function : 
#            commit and push to github. 
#            use the date and time as comment by default.
#########################################################
usage()
{
	echo "Usage："
	echo "commit.sh"
	echo " or"
	echo "commit.sh comment"
	exit 2
}

if [ $# -eq 1 ]; then
	comment=$1
else
	comment=`date +'%Y%m%d-%H%M%S'`
fi

git add .
git commit -m "$comment"
git push github 
git push gitee


