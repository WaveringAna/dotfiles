pkill polybar

echo "---" | tee -a /tmp/polybar1.log
polybar -c ~/.config/polybar/config.ini bar 2>&1 | tee -a /tmp/polybar1.log &

echo "Bars launched..."
