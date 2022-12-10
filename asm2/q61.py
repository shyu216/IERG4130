r=2
n=11
i=1
p=7
while 1:
    tmp=r**i%n
    print("2^%d mod 11 is %d"%(i,tmp))
    if(tmp==p):
        break
    i+=1

print(4**7%11)