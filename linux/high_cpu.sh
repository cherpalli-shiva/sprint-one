# Stimulate high CPU

Run:

dd if=/dev/zero of=/dev/null &


Open top:

top


→ See CPU at 100%.

Kill it:

kill -9 <pid>
