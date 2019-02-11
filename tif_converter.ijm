one = "C1-"
two = "C2-"
three = "C3-"
ttl = getTitle()
dir = getDirectory("image")
print(dir)
channel1 = one+ttl
channel2 = two+ttl
channel3 = three+ttl
run("Split Channels");
run("Merge Channels...", "c1=["+channel1+"] c2=["+channel2+"] c3=["+channel3+"] create keep");
selectWindow(ttl);
run("RGB Color");
saveAs("Tiff", dir+"merge"+ttl);
selectWindow(channel1);
run("RGB Color");
saveAs("Tiff", dir+channel1);
selectWindow(channel2);
run("RGB Color");
saveAs("Tiff", dir+channel2);
selectWindow(channel3);
run("RGB Color");
saveAs("Tiff", dir+channel3);
close("*")