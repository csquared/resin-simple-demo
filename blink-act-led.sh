# disable activity trigger for led0
echo none > /sys/class/leds/led0/trigger

#ten fast blinks
for i in `seq 1 10`;
do
  echo 1 >/sys/class/leds/led0/brightness
  sleep 0.25
  echo 0 >/sys/class/leds/led0/brightness
  sleep 0.25
done

#ten slow blinks
for i in `seq 1 10`;
do
  echo 1 >/sys/class/leds/led0/brightness
  sleep 1
  echo 0 >/sys/class/leds/led0/brightness
  sleep 1
done

#ten fast blinks
for i in `seq 1 10`;
do
  echo 1 >/sys/class/leds/led0/brightness
  sleep 0.25
  echo 0 >/sys/class/leds/led0/brightness
  sleep 0.25
done

# re-enable activity trigger
echo mmc0 >/sys/class/leds/led0/trigger
