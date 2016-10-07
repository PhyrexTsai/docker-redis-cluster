mv /supervisord2.conf /etc/supervisor/conf.d/supervisord.conf

supervisord
sleep 3

# IP="127.0.0.1"
# echo "yes" | ruby /redis/src/redis-trib.rb create --replicas 2 ${IP}:7003 ${IP}:7004 ${IP}:7005
tail -f /var/log/supervisor/redis-1.log
