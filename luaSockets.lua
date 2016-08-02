wifi.setmode(wifi.STATION) -- Set the wifi mode as Station
wifi.sta.config("SSID","Password")
wifi.sta.connect() --connect to access point
--it will take couple of Seconds to Connect to access point
ip = wifi.sta.getip()
print("your IP is"..ip)

--create connection using TCP, unsecured
sk = net.createConnection(net.TCP,0) 

--When socket is received print the received information 
-- function in the command is callback fucntion
sk:on("receive",function(sck,c)
			print(c)
		end -- end of function
	  ) -- end of sk:onReceive
	  
--when connection is established send the Message Hello

sk:on("connection",function(sck,c)
			sk:send("Helloooo....")
		end -- end of function
	 ) -- end of sk:onConnection


--Connect to socket to
-- Orbitary port 12346
-- and Ip 
sk:connect(12346,"192.168.1.199")

