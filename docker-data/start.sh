supervisord
sleep 3

IP="127.0.0.1"
echo "yes" | ruby /redis/src/redis-trib.rb create --replicas 1 ${IP}:8000 ${IP}:8001 
#${IP}:8002 ${IP}:8003 ${IP}:8004 ${IP}:8005 
tail -f /var/log/supervisor/redis-1.log
