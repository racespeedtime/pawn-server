while true
do
    ps -ef | grep "samp03svr" | grep -v "grep"
    if [ "$?" -eq 1 ]
        then
	./samp03svr
        echo "process has been restarted!"
    fi
    sleep 60
done
