
echo
echo "###########  Building .... #########"
echo
(cd cpp && make)
echo
echo
echo "###########  Testing .... #########"
echo 
(cd tests && sh run_all_exe_tests.sh)
echo
echo "###########  Done .... #########"
echo 
