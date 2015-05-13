function current_branch()
{
	local myresult='some value'
	#echo $myresult
	if [ -d .git ]; then
		echo " git:($(git rev-parse --abbrev-ref HEAD)) "
	else
		echo " "
	fi;
}

alias ..='cd ..'

PS1='\u:\W\[$(current_branch)\]\$ ' 
#PS1='\[$(ls | wc -l)\]\$ ' 
