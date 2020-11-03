pass=0
fail=0
score=0
bass_path=/projects/challenge  

SQL_Injection_Advanced_1=`grep -io "dave'; Select . from user_system_data;--" $bass_path/Validation.txt | wc -l`
SQL_Injection_Advanced_1_1=`grep -io "Smith' union select 6, user_name, password, '1', 'b','2', 1 from user_system_data--" $bass_path/Validation.txt | wc -l`
if [[ SQL_Injection_Advanced_1 -eq 1 ]] || [[ SQL_Injection_Advanced_1_1 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "SQL_Injection_Advanced: $fail"
fi;


SQL_Injection_Advanced_2=`grep -io "passW0rD" $bass_path/Validation.txt | wc -l`
if [[ SQL_Injection_Advanced_2 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "SQL_Injection_Advanced_2: $fail"
fi;


SQL_Injection_Attack_1=`grep -io "Smith' or '1'='1" $bass_path/Validation.txt | wc -l`
SQL_Injection_Attack_1_1=`grep -io "Smith' or 'a'='a" $bass_path/Validation.txt | wc -l`
if [[ SQL_Injection_Attack_1 -eq 1 ]] || [[ SQL_Injection_Attack_1_1 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "SQL_Injection_Attack: $fail"
fi;

SQL_Injection_Attack_2=`grep -io "or 1=1" $bass_path/Validation.txt | wc -l`
SQL_Injection_Attack_2_1=`grep -io "or a=a" $bass_path/Validation.txt | wc -l`
if [[ SQL_Injection_Attack_2 -eq 1 ]] || [[ SQL_Injection_Attack_2_1 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "SQL_Injection_Attack_2: $fail"
fi;

sql_mitigation=`grep -io "192.168.3.3" $bass_path/Validation.txt | wc -l`
sql_mitigation_1=`grep -io "192.168.4.0" $bass_path/Validation.txt | wc -l`
if [[ sql_mitigation -eq 1 ]] || [[ sql_mitigation_1 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "sql_mitigation: $fail"
fi;

Auth_PwdReset_1=`grep -io "Admin" $bass_path/Validation.txt | wc -l`
Auth_PwdReset_1_1=`grep -io "Tom" $bass_path/Validation.txt | wc -l`
if [[ Auth_PwdReset_1 -eq 1 ]] || [[ Auth_PwdReset_1_1 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "Auth_PwdReset_1: $fail"
fi;

Auth_PwdReset_2=`grep -io "green" $bass_path/Validation.txt | wc -l`
Auth_PwdReset_2_1=`grep -io "purple" $bass_path/Validation.txt | wc -l`
if [[ Auth_PwdReset_2 -eq 1 ]] || [[ Auth_PwdReset_2_1 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "Auth_PwdReset_2: $fail"
fi;

XSS_attack=`grep -io "Yes" $bass_path/Validation.txt | wc -l`
if [[ XSS_attack -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "XSS_attack: $fail"
fi;

Mis_Fun_Acces_Con_1=`grep -io "Users" $bass_path/Validation.txt | wc -l`
if [[ Mis_Fun_Acces_Con_1 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "Mis_Fun_Acces_Con_1: $fail"
fi;

Mis_Fun_Acces_Con_2=`grep -io "Config" $bass_path/Validation.txt | wc -l`
if [[ Mis_Fun_Acces_Con_2 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "Mis_Fun_Acces_Con_2: $fail"
fi;

Client_Side_filter_1=`grep -io "450000" $bass_path/Validation.txt | wc -l`
if [[ Client_Side_filter_1 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
     echo "Client_Side_filter_1: $fail"
fi;

Client_Side_filter_2=`grep -io "get_it_for_free" $bass_path/Validation.txt | wc -l`
if [[ Client_Side_filter_2 -eq 1 ]]; then
    ((pass++))
else
    ((fail++))
    echo "Client_Side_filter_2: $fail"
fi;

score=$(( ($pass * 100) / 12))

echo "Total testcase: 12"
echo "Total testcase passed: $pass"
echo "Total testcase fail: $fail"

echo "total score: $score"
