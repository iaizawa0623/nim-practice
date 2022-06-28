import ws

var wsc = await newWebSocket("ws://127.0.0.1:9001/ws")
echo await wsc.receiveStrPacket()
await wsc.send("Hi, how are you?")
echo await ws.receiveStrPacket()
wsc.close()