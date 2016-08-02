# NodeMcuLuaSocketwithPython

This is a simple demostration of Sockets on nodeMCU using Lua as Socket Client and Raspberrry pi as Python socket server
Run the Python code in the raspberry pi
and Lua file in NodeMcu

If you have error port already in use.. try the following to kill that port
use <br> 
<i>netstat -an </i> 
<br>
To display the all ports

<br>
use
<br>
<i> sudo netstat -lnp | grep 12346 </i>    [ Replace the 12346 with your port]
<br>
then it displays something like this
<p>
tcp6 0 0::::: 12346     ::::*  LISTEN 1745
</p>
then use
<br>
<i> kill 1745 </i> [replace 1745 with your number]


