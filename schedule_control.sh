python collect_container_cpu.py &
sleep 60
python collect_container_cpu.py &
for i in {1..61}
do
sleep 60
python ui.py ETL &
done

sleep 60
kubectl exec nimbus -- /opt/apache-storm/bin/storm kill ETLTopologySys

