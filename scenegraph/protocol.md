# Protocol of client-server websocket messages 

## To server

```{ msg:"addobject", name:string, position:[float, float, float] }```

```{ msg:"removeobject", name:string }```

```{ msg:"updateobject", name:string, args:list }```

## To client


```{ msg:"json", args:object }```