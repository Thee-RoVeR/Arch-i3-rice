polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar statusbar 2>&1 | tee -a /tmp/polybar1.log 

