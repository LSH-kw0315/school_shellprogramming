#!/bin/bash
p1ID=
p1PW=""
p1record=( 0 0 )
p1logined=0
p2ID=
p2PW=""
p2record=( 0 0 )
p2logined=0
initID="ID"
initPW="PW"
signID="ID"
signPW="PW"
signID_1="ID"
signPW_1="PW"
signID_2="ID"
signPW_2="PW"
declare -i signIDChanged 
declare -i signPWChanged
signIDChanged=0
signPWChanged=0
blue=44
red=41
blacktext=30
bluetext=34
yellowtext=33
whitetext=37
btnfocus=-1
themefocus=""
btn_2s=($blue $blue)
btn_4s=(${blue} ${blue} ${blue} ${blue})
btn_5s=($blue $blue $blue $blue $blue)
btn_6s=($blue $blue $blue $blue $blue $blue $blue)
declare -a map1
declare -a map2
declare -a savemod1
declare -a savemod2
mapelement=0
mapfocus=-1
p1token=0
p2token=0
draw_underbar(){
	n1=0
	while [ ${n1} -lt $1 ]
	do
		echo -n "_"
		n1=`expr ${n1} + 1`
	done
}
draw_space(){
	n2=0
	while [ ${n2} -lt $1 ]
	do
		echo -n " "
		n2=`expr ${n2} + 1`
	done
}
draw_slash(){
	echo -n "/"
}
draw_backslash(){
	echo -n "\\"
}
draw_parentheses(){
	echo -n ")"
}
draw_pipe(){
	echo -n "|"
}
main_print(){
    clear
    themefocus="main"
    #logo part start
    #line 1
    draw_space 1
    draw_underbar 4
    draw_space 3
    draw_underbar 3
    draw_space 2
    draw_underbar 4
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_underbar 1
    draw_space 7
    draw_underbar 1
    echo ""
    #line 2
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_pipe
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_pipe
    draw_underbar 1
    draw_space 1
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 5
    draw_slash
    draw_space 1
    draw_pipe
    echo ""
    #line3
    draw_backslash
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_backslash
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 5
    draw_pipe
    draw_space 1
    draw_pipe
    echo ""
    #line4
    draw_space 1
    draw_underbar 3
    draw_parentheses
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 3
    draw_parentheses
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 3
    draw_space 2
    draw_pipe
    draw_space 1
    draw_pipe
    echo ""
    #line5
    draw_pipe
    draw_underbar 4
    draw_slash
    draw_space 1
    draw_backslash
    draw_underbar 3
    draw_slash
    draw_pipe
    draw_underbar 4
    draw_slash
    draw_underbar 3
    draw_pipe
    draw_underbar 5
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_pipe
    echo ""
    #line5
    draw_space 4
    draw_underbar 1
    draw_space 2
    draw_underbar 5
    draw_space 2
    draw_underbar 1
    draw_space 4
    draw_underbar 2
    draw_space 2
    draw_underbar 4
    draw_space 2
    draw_underbar 2
    echo ""
    #line 6
    draw_space 3
    draw_slash
    draw_space 1
    draw_backslash
    draw_pipe
    draw_underbar 1
    draw_space 3
    draw_underbar 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    echo ""
    #line 2-2
    draw_space 2
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    echo ""
    #line 2-3
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash 
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    echo ""
    #line 2-4
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_underbar 1
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    echo -e "\n"
    draw_space 22
    echo "2019203021 LSH"
    echo ""
    #logo part end
    #button-like part start
    echo -e  "\n"
    echo -e -n "\033[${btn_6s[0]}m   "${p1ID:=1P Login}"   \033[0m"
    draw_space 5
    echo -e  "\033[${btn_6s[1]}m  "SIGN IN"  \033[0m"
    echo ""
    echo -e -n "\033[${btn_6s[2]}m   "${p2ID:=2P Login}"   \033[0m"
    draw_space 5
    echo -e  "\033[${btn_6s[3]}m  "SIGN OUT" \033[0m"
    echo ""
    draw_space 2
    echo -e -n "\033[${btn_6s[4]}m   "JOIN"   \033[0m"
    draw_space 3
    echo -e "\033[${btn_6s[5]}m  "EXIT"   \033[0m" 
    #button=like part end
}
signin_print(){
    clear
    themefocus="signin"
    #line 1
    draw_space 1
    draw_underbar 4
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_underbar 4
    draw_space 1
    draw_underbar 1
    draw_space 3
    draw_underbar 1
    draw_space 3
    draw_underbar 3
    draw_space 1
    draw_underbar 1
    draw_space 3
    draw_underbar 1
    echo ""
    #line 2
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_pipe
    draw_underbar 1
    draw_space 1
    draw_underbar 1
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_pipe
    draw_space 1
    draw_backslash
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe 
    draw_underbar 1
    draw_space 1
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_backslash
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    echo ""
    #iine 3
    draw_backslash
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 2
    draw_underbar 1
    draw_pipe
    draw_space 2
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 2
    draw_pipe
    draw_space 1
    draw_pipe
    draw_pipe
    draw_space 2
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    echo""
    #line4
    draw_space 1
    draw_underbar 3
    draw_parentheses
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_backslash
    draw_space 2
    draw_pipe
    draw_space 2
    draw_pipe
    draw_space 1
    draw_pipe
    draw_pipe
    draw_space 1
    draw_pipe
    draw_backslash
    draw_space 2
    draw_pipe
    echo ""
    #line4
    draw_pipe
    draw_underbar 4
    draw_slash
    draw_underbar 3
    draw_backslash
    draw_underbar 4
    draw_pipe
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_backslash
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 3
    draw_pipe
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_backslash
    draw_underbar 1
    draw_pipe
    echo -e "\n\n"
    #button-like part
    if [ ${signIDChanged} -ne 0 ]
    then signIDChanged=0;tput cnorm; read -p "please input ID that you want to use:" signID; tput civis;clear; signin_print 
    elif [ ${signPWChanged} -ne 0 ]
    then signPWChanged=0; tput cnorm; read -p "please input PW that you wanto to use:" signPW;tput civis;clear; signin_print
    else
    echo -e -n "\033[${btn_5s[0]}m         "$signID"          \033[0m"
    echo -e -n "     "
    echo -e  "\033[${btn_5s[1]}m   "Duplicate check"   \033[0m"
    echo ""
    echo -e "\033[${btn_5s[2]}m         "$signPW"          \033[0m"
    echo -e "\n\n\n"
    draw_space 11
    echo -e -n "\033[${btn_5s[3]}m  "SIGN IN"  \033[0m"
    draw_space 3
    echo -e -n "\033[${btn_5s[4]}m    "EXIT"    \033[0m"
    fi
    
}
signout_print(){
	clear
	themefocus="signout"
	#line 1
	draw_space 1
	draw_underbar 4
	draw_space 1
	draw_underbar 3
	draw_space 1
	draw_underbar 4
	draw_space 1
	draw_underbar 1
	draw_space 3
	draw_underbar 1
	draw_space 4
	draw_underbar 3
	draw_space 2
	draw_underbar 1
	draw_space 3
	draw_underbar 1
	draw_space 1
	draw_underbar 5
	echo ""
	#line 2
	draw_slash
	draw_space 1
	draw_underbar 3
	draw_pipe
	draw_underbar 1
	draw_space 1
	draw_underbar 1
	draw_slash
	draw_space 1
	draw_underbar 3
	draw_pipe
	draw_space 1
	draw_backslash
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 2
	draw_slash
	draw_space 1
	draw_underbar 1
	draw_space 1
	draw_backslash
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe 
	draw_underbar 1
	draw_space 3
	draw_underbar 1
	draw_pipe
	echo ""
	#line 3
	draw_backslash
	draw_underbar 3
	draw_space 1
	draw_backslash
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 2
	draw_underbar 1
	draw_pipe
	draw_space 2
	draw_backslash
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe 1
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	echo ""
	#line 4
	draw_space 1
	draw_underbar 3
	draw_parentheses
	draw_space 1
	draw_pipe 1
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_backslash
	draw_space 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	echo ""
	#logo fial line
	draw_pipe
	draw_underbar 4
	draw_slash
	draw_underbar 3
	draw_backslash
	draw_underbar 4
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_backslash
	draw_underbar 1
	draw_pipe
	draw_space 2
	draw_backslash
	draw_underbar 3
	draw_slash
	draw_space 1
	draw_backslash
	draw_underbar 3
	draw_slash
	draw_space 2
	draw_pipe
	draw_underbar 1
	draw_pipe
	echo -e "\n\n\n"
	#button-like
	if [ ${signIDChanged} -ne 0 ]
	then signIDChanged=0;tput cnorm;read -p "please input the ID that you want to delete:" signID;tput civis;signout_print
	elif [ ${signPWChanged} -ne 0 ]
	then signPWChanged=0;tput cnorm;read -p  "please input the PW corresponding to the ID :" signPW;tput civis;signout_print
	else
	draw_space 10 
        echo -e  "\033[${btn_4s[0]}m         "$signID"          \033[0m"
	echo ""
	draw_space 10
	echo -e  "\033[${btn_4s[1]}m         "$signPW"          \033[0m"
	echo -e  "\n\n"
	draw_space 10
	echo -e -n "\033[${btn_4s[2]}m "SIGN OUT" \033[0m"
	draw_space 2
	echo -e -n "\033[${btn_4s[3]}m   "EXIT"   \033[0m"
	fi
}
p1login_print(){
	themefocus="p1login"
	clear
	#line 1
	draw_space 1
	draw_underbar 1
	draw_space 1
	draw_underbar 4
	draw_space 4
	draw_underbar 1
	draw_space 5
	draw_underbar 3
	draw_space 3
	draw_underbar 4
	draw_space 1
	draw_underbar 3
	draw_space 1
	draw_underbar 1
	draw_space 3
	draw_underbar 1
	echo ""
	#line 2
	draw_slash
	draw_space 1
	draw_pipe
	draw_space 2
	draw_underbar 1
	draw_space 1
	draw_backslash
	draw_space 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 3
	draw_slash
	draw_space 1
	draw_underbar 1
	draw_space 1
	draw_backslash
	draw_space 1
	draw_slash
	draw_space 1
	draw_underbar 3
	draw_pipe
	draw_underbar 1
	draw_space 1
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_backslash
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	echo ""

	#line 3
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_parentheses
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 2
	draw_underbar 1
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_pipe
	draw_space 2
	draw_backslash
	draw_pipe
	draw_space 1
	draw_pipe
	echo ""
	
	#line 4
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 2
	draw_underbar 2
	draw_slash
	draw_space 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_pipe
	draw_space 1
	draw_pipe
	draw_pipe
	draw_space 1
	draw_pipe
	draw_backslash
	draw_space 2
	draw_pipe
	echo ""

	#line 5
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 5
	draw_pipe
	draw_underbar 5
	draw_backslash
	draw_underbar 3
	draw_slash
	draw_space 1
	draw_backslash
	draw_underbar 4
	draw_pipe
	draw_underbar 3
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_backslash
	draw_underbar 1
	draw_pipe
	echo -e "\n\n\n"
	#button-like
	if [ ${signIDChanged} -ne 0 ]
	then signIDChanged=0;tput cnorm;read -p "please input your ID:" signID_1;tput civis;p1login_print
	elif [ ${signPWChanged} -ne 0 ]
	then signPWChanged=0;tput cnorm;read -p  "please input the PW corresponding to the ID :" signPW_1;tput civis;p1login_print
	else
	draw_space 10 
        echo -e  "\033[${btn_4s[0]}m         "${signID_1}"          \033[0m"
	echo ""
	draw_space 10
	echo -e  "\033[${btn_4s[1]}m         "${signPW_1}"          \033[0m"
	echo -e  "\n\n"
	draw_space 10
	echo -e -n "\033[${btn_4s[2]}m "LOG IN" \033[0m"
	draw_space 2
	echo -e -n "\033[${btn_4s[3]}m   "EXIT"   \033[0m"
	fi

}
p2login_print(){
	themefocus="p2login"
	clear
	#line 1
	draw_space 1
	draw_underbar 4
	draw_space 2
	draw_underbar 4
	draw_space 4
	draw_underbar 1
	draw_space 5
	draw_underbar 3
	draw_space 3
	draw_underbar 4
	draw_space 1
	draw_underbar 3
	draw_space 1
	draw_underbar 1
	draw_space 3
	draw_underbar 1
	echo ""
	#line 2
	draw_pipe
	draw_underbar 3
	draw_space 1
	draw_backslash
	draw_pipe
	draw_space 2
	draw_underbar 1
	draw_space 1
	draw_backslash
	draw_space 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 3
	draw_slash
	draw_space 1
	draw_underbar 1
	draw_space 1
	draw_backslash
	draw_space 1
	draw_slash
	draw_space 1
	draw_underbar 3
	draw_pipe
	draw_underbar 1
	draw_space 1
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_backslash
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	echo ""

	#line 3

	draw_space 2
	draw_underbar 2
	draw_parentheses
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_parentheses
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 2
	draw_underbar 1
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_pipe
	draw_space 2
	draw_backslash
	draw_pipe
	draw_space 1
	draw_pipe
	echo ""
	
	#line 4
	draw_space 1
	draw_slash
	draw_space 1
	draw_underbar 2
	draw_slash
	draw_pipe
	draw_space 2
	draw_underbar 2
	draw_slash
	draw_space 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 2
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_pipe
	draw_pipe
	draw_space 1
	draw_pipe
	draw_pipe
	draw_space 1
	draw_pipe
	draw_backslash
	draw_space 2
	draw_pipe
	echo ""

	#line 5
	draw_pipe
	draw_underbar 5
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 5
	draw_pipe
	draw_underbar 5
	draw_backslash
	draw_underbar 3
	draw_slash
	draw_space 1
	draw_backslash
	draw_underbar 4
	draw_pipe
	draw_underbar 3
	draw_pipe
	draw_underbar 1
	draw_pipe
	draw_space 1
	draw_backslash
	draw_underbar 1
	draw_pipe
	echo -e "\n\n\n"
	#button-like
	if [ ${signIDChanged} -ne 0 ]
	then signIDChanged=0;tput cnorm;read -p "please input your ID:" signID_2;tput civis;p2login_print
	elif [ ${signPWChanged} -ne 0 ]
	then signPWChanged=0;tput cnorm;read -p  "please input the PW corresponding to the ID :" signPW_2;tput civis;p2login_print
	else
	draw_space 10 
        echo -e  "\033[${btn_4s[0]}m         "${signID_2}"          \033[0m"
	echo ""
	draw_space 10
	echo -e  "\033[${btn_4s[1]}m         "${signPW_2}"          \033[0m"
	echo -e  "\n\n"
	draw_space 10
	echo -e -n "\033[${btn_4s[2]}m "LOG IN" \033[0m"
	draw_space 2
	echo -e -n "\033[${btn_4s[3]}m   "EXIT"   \033[0m"
	fi

}
join_print(){
    themefocus="join"
    clear
#line5
    draw_space 10
    draw_underbar 1
    draw_space 2
    draw_underbar 5
    draw_space 2
    draw_underbar 1
    draw_space 4
    draw_underbar 2
    draw_space 2
    draw_underbar 4
    draw_space 2
    draw_underbar 2
    echo ""
    #line 6
    draw_space 9
    draw_slash
    draw_space 1
    draw_backslash
    draw_pipe
    draw_underbar 1
    draw_space 3
    draw_underbar 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    echo ""
    #line 2-2
    draw_space 8
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    echo ""
    #line 2-3
    draw_space 7
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash 
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    echo ""
    #line 2-4
    draw_space 6
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_underbar 1
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    echo ""

    #lobby draw
    draw_space 8
    draw_underbar 1
    draw_space 5
    draw_underbar 3
    draw_space 2
    draw_underbar 4
    draw_space 2
    draw_underbar 6
    draw_space 3
    draw_underbar 2
    echo""

    draw_space 7 
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 3
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_underbar 2
    draw_space 1
    draw_parentheses
    draw_pipe
    draw_space 1
    draw_underbar 2
    draw_space 1
    draw_parentheses
    draw_space 1
    draw_backslash
    draw_space 1
    draw_slash
    draw_space 1
    draw_slash
    echo""

    draw_space 7
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 2
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 2
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 2
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_backslash
    draw_space 1
    echo -n "V"
    draw_space 1
    draw_slash
    echo ""

    draw_space 7
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 2
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_parentheses
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_parentheses
    draw_space 1
    draw_pipe
    draw_pipe
    draw_space 1
    draw_pipe
    echo ""

    draw_space 7
    draw_pipe
    draw_underbar 5
    draw_backslash
    draw_underbar 3
    draw_slash
    draw_pipe
    draw_underbar 4
    draw_slash
    draw_pipe
    draw_underbar 4
    draw_slash
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_pipe

    echo -e "\n\n\n"

    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_underbar 4

    draw_space 32

    draw_space 1
    draw_underbar 4
    draw_space 2
    draw_underbar 4
    echo ""
    draw_slash
    draw_space 1
    draw_pipe
    draw_space 2
    draw_underbar 1
    draw_space 1
    draw_backslash

    draw_space 31

    draw_pipe
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 2
    draw_underbar 1
    draw_space 1
    draw_backslash
    echo ""
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_parentheses
    draw_space 1
    draw_pipe

    draw_space 30

    draw_space 2
    draw_underbar 2
    draw_parentheses
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_parentheses
    draw_space 1
    draw_pipe
    echo ""
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 2
    draw_underbar 2
    draw_slash

    draw_space 30

    draw_space 2
    draw_slash
    draw_space 1
    draw_underbar 2
    draw_slash
    draw_pipe
    draw_space 2
    draw_underbar 2
    draw_slash
    echo ""
    draw_pipe
    draw_underbar 1
    draw_pipe
    draw_underbar 1
    draw_pipe

    draw_space 34

    draw_pipe
    draw_underbar 5
    draw_pipe
    draw_underbar 1
    draw_pipe
    
    echo -e "\n"
    #player record
    echo -n "ID :${p1ID}"
    draw_space 34
    echo "ID :${p2ID}"

    echo -n "WIN : ${p1record[0]}"
    draw_space 33
    echo "WIN : ${p2record[0]}"

    echo -n "LOSE : ${p1record[1]}"
    draw_space 32  
    echo "LOSE : ${p2record[1]}"
    
    echo -e "\n\n"

    draw_space 9  
    echo -e -n "\033[${btn_2s[0]}m   "START"   \033[0m"
    draw_space 4
    echo -e "\033[${btn_2s[1]}m    "EXIT"    \033[0m" 
}
mapselect_print(){
	clear
	themefocus="mapselect"
#line5
    draw_space 10
    draw_underbar 1
    draw_space 2
    draw_underbar 5
    draw_space 2
    draw_underbar 1
    draw_space 4
    draw_underbar 2
    draw_space 2
    draw_underbar 4
    draw_space 2
    draw_underbar 2
    echo ""
    #line 6
    draw_space 9
    draw_slash
    draw_space 1
    draw_backslash
    draw_pipe
    draw_underbar 1
    draw_space 3
    draw_underbar 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    echo ""
    #line 2-2
    draw_space 8
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    echo ""
    #line 2-3
    draw_space 7
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash 
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    echo ""
    #line 2-4
    draw_space 6
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_underbar 1
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    echo ""

    #map select
    draw_space 1
    draw_underbar 2
    draw_space 2
    draw_underbar 2
    draw_space 4
    draw_underbar 1
    draw_space 4 
    draw_underbar 4
    draw_space 4
    draw_underbar 4
    draw_space 2
    draw_underbar 5
    draw_space 1
    draw_underbar 1
    draw_space 5
    draw_underbar 5
    draw_space 1
    draw_underbar 4
    draw_space 1
    draw_underbar 5
    echo ""

    draw_pipe
    draw_space 2
    draw_backslash
    draw_slash
    draw_space 2
    draw_pipe
    draw_space 2
    draw_slash
    draw_space 1
    draw_backslash
    draw_space 2
    draw_pipe
    draw_space 2
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_pipe
    draw_pipe
    draw_space 1
    draw_underbar 4
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 3
    draw_pipe
    draw_space 1
    draw_underbar 4
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_pipe
    draw_underbar 1
    draw_space 3
    draw_underbar 1
    draw_pipe
    echo ""

    draw_pipe
    draw_space 1
    draw_pipe
    draw_backslash
    draw_slash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_parentheses
    draw_space 1
    draw_pipe
    draw_space 1
    draw_backslash
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 2
    draw_underbar 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 3
    draw_pipe
    draw_space 2
    draw_underbar 1
    draw_pipe
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 5
    draw_pipe
    draw_space 1
    draw_pipe
    echo ""

    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 2
    draw_pipe
    draw_space 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 2
    draw_underbar 2
    draw_slash
    draw_space 3
    draw_underbar 3
    draw_parentheses
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 3
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 3
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 2
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 3
    draw_space 2
    draw_pipe
    draw_space 1
    draw_pipe
    echo ""

    draw_pipe
    draw_underbar 1
    draw_pipe
    draw_space 2
    draw_pipe
    draw_underbar 1
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_underbar 1
    draw_pipe
    draw_space 5
    draw_pipe
    draw_underbar 4
    draw_slash
    draw_pipe
    draw_underbar 5
    draw_pipe
    draw_underbar 5
    draw_pipe
    draw_underbar 5
    draw_backslash
    draw_underbar 4
    draw_pipe
    draw_space 1
    draw_pipe
    draw_underbar 1
    draw_pipe
    echo -e "\n\n"
    #map manual draw
    upperbox
    draw_space 10
    upperbox
    echo ""
    msl=0
    while [ $msl -lt 7 ]
    do
	    middlebox map1[@]
	    mapelement=`expr $msl \* 8`
	    draw_space 10
	    middlebox map2[@]
	    echo ""
	    msl=`expr $msl + 1`
    done
    lowerbox map1[@]
    mapelement=56
    draw_space 10
    lowerbox map2[@]
    mapelement=0
    echo -e "\n"
    #button
    draw_space 3  
    echo -e -n "\033[${btn_2s[0]}m   "MAP1"   \033[0m"
    draw_space 17
    echo -e "\033[${btn_2s[1]}m   "MAP2"   \033[0m" 



}
game1_print(){
	clear
	themefocus="game1"
#line5
    draw_space 4
    draw_underbar 1
    draw_space 2
    draw_underbar 5
    draw_space 2
    draw_underbar 1
    draw_space 4
    draw_underbar 2
    draw_space 2
    draw_underbar 4
    draw_space 2
    draw_underbar 2
    echo ""
    #line 6
    draw_space 3
    draw_slash
    draw_space 1
    draw_backslash
    draw_pipe
    draw_underbar 1
    draw_space 3
    draw_underbar 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    echo ""
    #line 2-2
    draw_space 2
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    echo ""
    #line 2-3
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash 
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    echo ""
    #line 2-4
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_underbar 1
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    echo -e "\n"

    map1_draw

    echo -e "\n"
    echo -n "1P: $p1token"
    draw_space 12
    echo -n "2P: $p2token"

}
game2_print(){
	clear
	themefocus="game2"
#line5
    draw_space 4
    draw_underbar 1
    draw_space 2
    draw_underbar 5
    draw_space 2
    draw_underbar 1
    draw_space 4
    draw_underbar 2
    draw_space 2
    draw_underbar 4
    draw_space 2
    draw_underbar 2
    echo ""
    #line 6
    draw_space 3
    draw_slash
    draw_space 1
    draw_backslash
    draw_pipe
    draw_underbar 1
    draw_space 3
    draw_underbar 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    draw_backslash
    draw_space 1
    draw_backslash
    draw_slash
    draw_space 1
    draw_slash
    echo ""
    #line 2-2
    draw_space 2
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 1
    draw_pipe
    draw_space 1
    draw_pipe
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 1
    draw_space 1
    draw_backslash
    draw_space 3
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    echo ""
    #line 2-3
    draw_space 1
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash
    draw_pipe
    draw_space 1
    draw_pipe
    draw_slash
    draw_space 1
    draw_underbar 3
    draw_space 1
    draw_backslash 
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    draw_space 2
    draw_slash
    draw_space 2
    draw_backslash
    echo ""
    #line 2-4
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_underbar 1
    draw_slash
    draw_underbar 1
    draw_slash
    draw_space 3
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    draw_slash
    draw_underbar 1
    draw_slash
    draw_backslash
    draw_underbar 1
    draw_backslash
    echo -e "\n"

    map2_draw

    echo -e "\n"
    echo -n "1P: $p1token"
    draw_space 12
    echo -n "2P: $p2token"

}

map1_init(){
    tile1=0
    mapfocus=-1
    while [ $tile1 -lt 64 ]
    do
	    map1[$tile1]=$blacktext
	    savemod1[$tile1]=$blacktext
	    tile1=`expr $tile1 + 1`
    done
}
map2_init(){
    tile2=0
    mapfocus=-1
    while [ $tile2 -lt 64 ]
    do
	    map2[$tile2]=$blacktext
	    savemod2[$tile2]=$blacktext
	    tile2=`expr $tile2 + 1`
    done
    map2[9]=$yellowtext
    savemod2[9]=$yellowtext

    map2[14]=$yellowtext
    savemod2[14]=$yellowtext

    map2[18]=$yellowtext
    savemod2[18]=$yellowtext

    map2[21]=$yellowtext
    savemod2[21]=$yellowtext

    map2[27]=$yellowtext
    savemod2[27]=$yellowtext

    map2[28]=$yellowtext
    savemod2[28]=$yellowtext

    map2[35]=$yellowtext
    savemod2[35]=$yellowtext

    map2[36]=$yellowtext
    savemod2[36]=$yellowtext

    map2[42]=$yellowtext
    savemod2[42]=$yellowtext

    map2[45]=$yellowtext
    savemod2[45]=$yellowtext

    map2[49]=$yellowtext
    savemod2[49]=$yellowtext

    map2[54]=$yellowtext
    savemod2[54]=$yellowtext
}
map_move(){
if [ ${mapfocus} -eq -1 ]
then mapfocus=63
elif [ "$1" = 'A' ] && [ ${mapfocus} -gt 7 ]
then mapfocus=`expr $mapfocus - 8 `
elif [ "$1" = 'A' ] && [ ${mapfocus} -le 7 ]
then mapfocus=`expr $mapfocus + 56`
elif [ "$1" = 'B' ] && [ ${mapfocus} -lt 56 ]
then mapfocus=`expr $mapfocus + 8`
elif [ "$1" = 'B' ] && [ ${mapfocus} -ge 56 ]
then mapfocus=`expr $mapfocus - 56`
elif [ "$1" = 'C' ] && [ ${mapfocus} -lt 63 ]
then mapfocus=`expr $mapfocus + 1`
elif [ "$1" = 'C' ] && [ ${mapfocus} -ge 63 ]
then mapfocus=0
elif [ "$1" = 'D' ] && [ ${mapfocus} -gt 0 ]
then mapfocus=`expr $mapfocus - 1`
elif [ "$1" = 'D' ] && [ ${mapfocus} -eq 0 ]
then mapfocus=63
fi	 
}
map1_change(){
   arr1=0
   while [ $arr1 -lt 64 ]
   do
	   map1[$arr1]=${savemod1[$arr1]}
	   arr1=`expr $arr1 + 1`
   done
   map1[$mapfocus]=$whitetext
}
map2_change(){
   arr2=0
   while [ $arr2 -lt 64 ]
   do
	   map2[$arr2]=${savemod2[$arr2]}
	   arr2=`expr $arr2 + 1`
   done
   map2[$mapfocus]=$whitetext
}
map1_playtoken(){
    if [ ${savemod1[$mapfocus]} -ne $bluetext ]
    then
	   savemod1[$mapfocus]=$bluetext
	   map1[$mapfocus]=$bluetext 
	   p1token=`expr $p1token + 1`
    fi
}
map2_playtoken(){
    if [ ${savemod2[$mapfocus]} -ne $bluetext ] && [ ${savemod2[$mapfocus]} -ne $yellowtext ]
    then
	    savemod2[$mapfocus]=$bluetext
	    map2[$mapfocus]=$bluetext
	    p1token=`expr $p1token + 1`
    fi
}
middlebox(){
n=0
echo -e -n "\u251C"
getmap=("${!1}")
while [ ${n} -lt 7 ]
do
        	
        echo -e -n "\033[${getmap[$mapelement]}m\u2580\033[0m"
        echo -e -n "\u253C"
        n=`expr $n + 1`
	mapelement=`expr $mapelement + 1`
done
echo -e -n "\033[${getmap[$mapelement]}m\u2580\033[0m"
mapelement=`expr $mapelement + 1`
echo -e -n "\u2524"
}
upperbox(){
l=0
echo -e -n "\u250C"
while [ ${l} -lt 7 ]
do
        echo -e -n "\u2500"
        echo -e -n "\u252C"
        l=`expr $l + 1`
done
echo -e -n "\u2500"
echo -e -n "\u2510"
}
lowerbox(){
        k=0
	getmap=("${!1}")
        echo -e -n "\u2514"
        while [ $k -lt 7 ]
        do
                echo -e -n "\033[${getmap[$mapelement]}m\u2580\033[0m"
                echo -e -n "\u2534"
                k=`expr $k + 1`
		mapelement=`expr $mapelement + 1`
        done
        echo -e -n "\033[${getmap[$mapelement]}m\u2580\033[0m"
	mapelement=`expr $mapelement + 1`
        echo -e -n "\u2518"
}

map1_draw(){
 mapelement=0
 m1=0
 upperbox 
 echo ""
 while [ ${m1} -lt 7 ]
 do
	 middlebox map1[@]
	 echo ""
	 m1=`expr $m1 + 1`
 done
 lowerbox map1[@]
}
map2_draw(){
    mapelement=0
    m2=0
    upperbox
    echo ""
    while [ ${m2} -lt 7 ]
    do
	    middlebox map2[@]
	    echo ""
	    m2=`expr $m2 + 1`
    done
    lowerbox map2[@]
}
btnControl(){
if [ ${themefocus} = "main" ]
then 
    if [ ${btnfocus} -eq -1 ]
    then btnfocus=0
    elif [ "$1" = 'A' ] && [ "${btnfocus}" -eq 1 ]
    then btnfocus=5
    elif [ "$1" = 'A' ] && [ "${btnfocus}" -eq 0 ]
    then btnfocus=4
    elif [ "$1" = 'A' ] && [ "${btnfocus}" -ge 2 ]
    then btnfocus=`expr ${btnfocus} - 2`
    elif [ "$1" = 'B' ] && [ "${btnfocus}" -eq 5 ]
    then btnfocus=1
    elif [ "$1" = 'B' ] && [ "${btnfocus}" -eq 4 ]
    then btnfocus=0
    elif [ "$1" = 'B' ] && [ "${btnfocus}" -le 3 ]
    then btnfocus=`expr ${btnfocus} + 2`
    elif [ "$1" = 'C' ] && [ "${btnfocus}" -lt 5 ]
    then btnfocus=`expr ${btnfocus} + 1`
    elif [ "$1" = 'C' ] && [ "${btnfocus}" -ge 5 ]
    then btnfocus=0
    elif [ "$1" = 'D' ] && [ "${btnfocus}" -ge 1 ]
    then btnfocus=`expr ${btnfocus} - 1`
    elif [ "$1" = 'D' ] && [ "${btnfocus}" -lt 1 ]
    then btnfocus=5
    fi
elif [ ${themefocus} = "signin" ]
then
	if [ ${btnfocus} -eq -1 ]
	then btnfocus=0
	elif [ "$1" = 'A' ] && [ ${btnfocus} -ge 2 ] 
	then btnfocus=0
	elif [ "$1" = 'A' ] && [ ${btnfocus} -lt 2 ]
	then btnfocus=3
	elif [ "$1" = 'B' ] && [ ${btnfocus} -ge 3 ]
	then btnfocus=0
	elif [ "$1" = 'B' ] && [ ${btnfocus} -eq 2 ]
	then btnfocus=3
	elif [ "$1" = 'B' ] && [ ${btnfocus} -lt 2 ]
	then btnfocus=2
	elif [ "$1" = 'D' ] && [ ${btnfocus} -gt 0 ]
	then btnfocus=`expr ${btnfocus} - 1`
	elif [ "$1" = 'D' ] && [ ${btnfocus} -le 0 ]
	then btnfocus=4
	elif [ "$1" = 'C' ] && [ ${btnfocus} -lt 4 ]
	then btnfocus=`expr ${btnfocus} + 1`
	elif [ "$1" = 'C' ] && [ ${btnfocus} -ge 4 ]
	then btnfocus=0
	fi
elif [ "$themefocus" = "signout" ] || [ "$themefocus" = "p1login" ] || [ "$themefocus" = "p2login" ]
then
	if [ ${btnfocus} -eq -1 ]
	then btnfocus=0
	elif [ "$1" = 'A' ] && [ ${btnfocus} -eq 0 ]
	then btnfocus=2
	elif [ "$1" = 'A' ] && [ ${btnfocus} -ge 2 ]
	then btnfocus=1
	elif [ "$1" = 'A' ] && [ ${btnfocus} -eq 1 ]
	then btnfocus=0
	elif [ "$1" = 'B' ] && [ ${btnfocus} -eq 1 ]
	then btnfocus=2
	elif [ "$1" = 'B' ] && [ ${btnfocus} -ge 2 ]
	then btnfocus=0
	elif [ "$1" = 'B' ] && [ ${btnfocus} -eq 0 ]
	then btnfocus=1
	elif [ "$1" = 'C' ] && [ ${btnfocus} -lt 3 ]
	then btnfocus=`expr ${btnfocus} + 1`
	elif [ "$1" = 'C' ] && [ ${btnfocus} -ge 3 ]
	then btnfocus=0
	elif [ "$1" = 'D' ] && [ ${btnfocus} -gt 0 ]
	then btnfocus=`expr ${btnfocus} - 1`
	elif [ "$1" = 'D' ] && [ ${btnfocus} -le 0 ]
	then btnfocus=3
	fi
elif [ "$themefocus" = "join" ] || [ "$themefocus" = "mapselect" ]
then
	if [ $btnfocus -eq -1 ]
	then btnfocus=0
	elif [ $btnfocus -eq 0 ]
	then btnfocus=1
	elif [ ${btnfocus} -eq 1 ]
	then btnfocus=0	
        fi	
fi
}
btn_init(){
	btnfocus=-1
	signID=$initID
	signPW=$initPW
	for((i=0;i<4;i++));
	do
		btn_4s[$i]=$blue
		btn_5s[$i]=$blue
		btn_6s[$i]=$blue
	done
	btn_2s[0]=$blue
	btn_2s[1]=$blue
	btn_5s[4]=$blue
	btn_6s[4]=$blue
	btn_6s[5]=$blue
}
btn_2s_Change(){
	var=0
	while [ ${var} -lt 2 ]
	do
		btn_2s[${var}]=$blue
		var=`expr ${var} + 1`
	done
	btn_2s[${btnfocus}]=$red
}
btn_4s_Change(){
	var=0
	while [ ${var} -lt 4 ]
	do
		btn_4s[${var}]=$blue
		var=`expr ${var} + 1`
	done
	btn_4s[${btnfocus}]=$red
}
btn_5s_Change(){
	var=0
	while [ ${var} -lt 5 ]
	do
		btn_5s[${var}]=$blue
		var=`expr ${var} + 1`
	done
	btn_5s[${btnfocus}]=$red	
}
btn_6s_Change(){
	var=0
	while [ ${var} -lt 6 ]
	do
		btn_6s[${var}]=$blue
		var=`expr ${var} + 1`
	done
	btn_6s[${btnfocus}]=$red
}
CheckID(){
	temp=$IFS
	IFS=','
	echo ""
	while read line || [ -n "$line" ]
	do
		num=0
		for var in $line
		do
			if [ "$var" = $signID ] && [ $num -eq 0 ]
			then echo "There  already Exists!";exit
			fi
			break
		done
	done<playerinfo.txt
	#or I can use pipeline. like this: cat playerinfo.txt | while read line
	IFS=$temp
	echo "You Can use this ID!"
	exit	
}
deleteAccount(){
	temp=$IFS
	IFS=','
	cnt=0
	echo ""
	while read line || [ -n "$line" ]
	do
		
		index=0
		for var in $line
		do
			if [ "$var" = $signID ] && [ $index -eq 0 ]
			then cnt=`expr ${cnt} + 1`	
			elif [ "$var" = $signPW ] && [ $index -eq 1 ]
			then cnt=`expr ${cnt} + 1`
			elif [ $index -eq 2 ]
			then	break
			fi
			index=`expr $index + 1`
		done
		if [ $cnt -eq 2 ]
		then break
		else
		cnt=0
		fi
	done<playerinfo.txt
	if [ $cnt -eq 2 ]
	then sed -i "/^${signID}/d" playerinfo.txt;echo "Account is deleted.";exit
	else echo "There is no Account like that. or You miss ID or PW.";exit
	fi
		

}

loginOf1p(){
	temp=$IFS
	IFS=','
	cnt=0
	echo ""
	while read line || [ -n "$line" ]
	do
		
		index=0
		for var in $line
		do
			if [ "$var" = $signID_1 ] && [ $index -eq 0 ] && [ "${signID_1}" != "${p1ID}" ] && [ "${signID_1}" != "${p2ID}" ]
			then cnt=`expr ${cnt} + 1`;p1ID=$var
			elif [ "$var" = $signPW_1 ] && [ $index -eq 1 ]
			then cnt=`expr ${cnt} + 1`;p1PW=$var
			elif [ $cnt -ge 2 ]
			then i=`expr ${index} - 2`;p1record[$i]=$var
			elif [ $cnt -lt 2 ] && [ $index -eq 2 ]	
			then break
			fi
			index=`expr $index + 1`
		done
		if [ $cnt -ge 2 ]
		then break
		else
		cnt=0;p1ID=""
		fi
	done<playerinfo.txt
	if [ $cnt -ge 2 ]
	then btn_init;p1logined=1;main_print
	else
		echo "there is no such ID, or You missed ID or PW. or It is already being used. "
		exit
	fi

}
loginOf2p(){
	temp=$IFS
	IFS=','
	cnt=0
	echo ""
	while read line || [ -n "$line" ]
	do
		
		index=0
		for var in $line
		do
			if [ "$var" = $signID_2 ] && [ $index -eq 0 ] && [ ${signID_2} != "$p1ID" ] && [ ${signID_2} != "$p2ID" ]
			then cnt=`expr ${cnt} + 1`;p2ID=$var
			elif [ "$var" = $signPW_2 ] && [ $index -eq 1 ]
			then cnt=`expr ${cnt} + 1`;p2PW=$var
			elif [ $cnt -ge 2 ]
			then i=`expr ${index} - 2`;p2record[$i]=$var
			elif [ $cnt -lt 2 ] && [ $index -eq 2 ]	
			then break
			fi
			index=`expr $index + 1`
		done
		if [ $cnt -ge 2 ]
		then break
		else
		cnt=0;p2ID=""
		fi
	done<playerinfo.txt
	if [ $cnt -ge 2 ]
	then btn_init;p2logined=1;main_print
	else
		echo "there is no such ID, or You missed ID or PW or Account you inputted is already being used."
		exit
	fi

}
checkLogin(){
	if [ ${p1logined} -eq 1 ] && [ ${p2logined} -eq 1 ]
	then join_print
	else
		exit
	fi
}
tput civis
map1_init
map2_init
#program starts
main_print
xset r rate 10000
if [ ! -f "playerinfo.txt"  ]
then touch playerinfo.txt
fi
while true  
do
#main menu highlight
read -n 1 -s input
if [ "$input" = "" ] && [ "$themefocus" = "main" ]
then read -n 1 -s  input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)btnControl ${input};btn_6s_Change;main_print;;
			B)btnControl ${input};btn_6s_Change;main_print;;
			C)btnControl ${input};btn_6s_Change;main_print;;
			D)btnControl ${input};btn_6s_Change;main_print;;
		esac
	fi

#sign in menu highlight
elif [ "$input" = "" ] && [ "$themefocus" = "signin" ]
then read -n 1 -s input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)btnControl ${input};btn_5s_Change;signin_print;;
			B)btnControl ${input};btn_5s_Change;signin_print;;
			C)btnControl ${input};btn_5s_Change;signin_print;;
			D)btnControl ${input};btn_5s_Change;signin_print;;
		esac
	fi
elif [ "$input" = "" ] && [ "$themefocus" = "signout" ]
then read -n 1 -s input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)btnControl ${input};btn_4s_Change;signout_print;;
			B)btnControl ${input};btn_4s_Change;signout_print;;
			C)btnControl ${input};btn_4s_Change;signout_print;;
			D)btnControl ${input};btn_4s_Change;signout_print;;
		esac
	fi
elif [ "$input" = "" ] && [ "$themefocus" = "p1login" ]
then read -n 1 -s input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)btnControl ${input};btn_4s_Change;p1login_print;;
			B)btnControl ${input};btn_4s_Change;p1login_print;;
			C)btnControl ${input};btn_4s_Change;p1login_print;;
			D)btnControl ${input};btn_4s_Change;p1login_print;;
		esac
	fi

elif [ "$input" = "" ] && [ "$themefocus" = "p2login" ]
then read -n 1 -s input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)btnControl ${input};btn_4s_Change;p2login_print;;
			B)btnControl ${input};btn_4s_Change;p2login_print;;
			C)btnControl ${input};btn_4s_Change;p2login_print;;
			D)btnControl ${input};btn_4s_Change;p2login_print;;
		esac
	fi
elif [ "$input" = "" ] && [ "$themefocus" = "join" ]
then read -n 1 -s input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)btnControl ${input};btn_2s_Change;join_print;;
			B)btnControl ${input};btn_2s_Change;join_print;;
			C)btnControl ${input};btn_2s_Change;join_print;;
			D)btnControl ${input};btn_2s_Change;join_print;;
		esac
	fi
elif [ "$input" = "" ] && [ "$themefocus" = "mapselect" ]
then read -n 1 -s input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)btnControl ${input};btn_2s_Change;mapselect_print;;
			B)btnControl ${input};btn_2s_Change;mapselect_print;;
			C)btnControl ${input};btn_2s_Change;mapselect_print;;
			D)btnControl ${input};btn_2s_Change;mapselect_print;;
		esac
	fi
elif [ "$input" = "" ] && [ "$themefocus" = "game1" ]
then read -n 1 -s input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)map_move ${input};map1_change;game1_print;;
			B)map_move ${input};map1_change;game1_print;;
			C)map_move ${input};map1_change;game1_print;;
			D)map_move ${input};map1_change;game1_print;;
		esac
	fi
elif [ "$input" = "" ] && [ "$themefocus" = "game2" ]
then read -n 1 -s input
	if [ "$input" = "[" ]
	then read -n 1 -s input
		case ${input} in
			A)map_move ${input};map2_change;game2_print;;
			B)map_move ${input};map2_change;game2_print;;
			C)map_move ${input};map2_change;game2_print;;
			D)map_move ${input};map2_change;game2_print;;
		esac
	fi


fi

#detecting enter of main
if [ "$input" = ""  ] && [ "${themefocus}" = "main" ] && [ ${btnfocus} -ge 0 ]
then case ${btnfocus} in
	0)btn_init;p1login_print;;
	1)btn_init;signin_print;;
        2)btn_init;p2login_print;;
	3)btn_init;signout_print;;
	4)btn_init;checkLogin;;
	5)exit;;
	*);;
esac
elif [ "$input" = "" ] && [ "${themefocus}" = "signin" ] && [ ${btnfocus} -ge 0 ]
then case ${btnfocus} in
	0)signIDChanged=1;signin_print;;
	1)CheckID;;
	2)signPWChanged=1;signin_print;;
	3)echo -e "${signID},${signPW},0,0">>playerinfo.txt;exit;;
	4)exit;;
	*);;
esac
elif [ "$input" = "" ] && [ "${themefocus}" = "signout" ] && [ ${btnfocus} -ge 0 ]
then case ${btnfocus} in
	0)signIDChanged=1;signout_print;;
	1)signPWChanged=1;signout_print;;
	2)deleteAccount;;
	3)exit;;
esac
elif [ "$input" = "" ] && [ "${themefocus}" = "p1login" ] && [ ${btnfocus} -ge 0 ]
then case ${btnfocus} in
	0)signIDChanged=1;p1login_print;;
	1)signPWChanged=1;p1login_print;;
	2)loginOf1p;;
	3)exit;;
esac
elif [ "$input" = "" ] && [ "${themefocus}" = "p2login" ] && [ ${btnfocus} -ge 0 ]
then case ${btnfocus} in
	0)signIDChanged=1;p2login_print;;
	1)signPWChanged=1;p2login_print;;
	2)loginOf2p;;
	3)exit;;
esac
elif [ "$input" = "" ] && [ "${themefocus}" = "join" ] && [ ${btnfocus} -ge 0 ]
then case ${btnfocus} in
	0)btn_init;mapselect_print;;
	1)exit;;
esac
elif [ "$input" = "" ] && [ "${themefocus}" = "mapselect" ] && [ ${btnfocus} -ge 0 ]
then case ${btnfocus} in
	0)map1_init;game1_print;;
	1)map2_init;game2_print;;
esac
elif [ "$input" = "" ] && [ "${themefocus}" = "game1" ] && [ ${mapfocus} -ge 0 ]
then 
	map1_playtoken
	game1_print
elif [ "$input" = "" ] && [ "${themefocus}" = "game2" ] && [ ${mapfocus} -ge 0 ]
then 
	map2_playtoken
	game2_print




fi
done
