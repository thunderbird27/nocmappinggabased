import os, sys
import array
import itertools
import math
import time
import json
simplejson = json

def cal_latency(item):
  graph = {'M5': {'M1':200},
             'M1': {'M3':600, 'M6':200},
             'M3': {'M1':600, 'M2':200, 'M4':200},
             'M2': {'M3':200},
             'M4': {'M3':200},
             'M6': {},
             }
 

  pkindex=0

  i = 0 #row
  j = 0 #column

  no = 0 # router number

  rowval = 2
  colval = 3
  routval = 6

  routeraddr = { }
  routeraddrnew = { }

  while j < colval:

    while i < colval:
      a = "ROUTER_ID_"+str(no)+"_x"      
      routeraddr[a] = str(i)
      print a,i
      b = "ROUTER_ID_"+str(no)+"_y"
      routeraddr[b] = str(j)
      print b, j
      i = i + 1
      no = no + 1          
    j = j + 1
    i = 0


 #A = [["M4", "M9", "M2", "M8", "M7", "M1", "M5", "M3", "M6"]]

  print item
        
  
  filename1 ="packetgen.txt"
  mapdef = open(filename1,'w')
  
  index=0
  while index<len(item):
      print "....router number", index, item[index]
      #COPY FROM APPSELID
      idx = 0
      while idx <= len(item):
        val = "M" + str(idx)
        if item[index] == val:
          print item[index]
          frx = "ROUTER_ID_"+str(index)+"_x"
          fry = "ROUTER_ID_"+str(index)+"_y"  
          a = "ROUTER_ID_"+item[index]+"_x"      
          routeraddrnew[a] = routeraddr[frx]
          b = "ROUTER_ID_"+item[index]+"_y"      
          routeraddrnew[b] = routeraddr[fry]
        idx = idx + 1
      index = index + 1
   
  fhop = 0   
  for keys,itms in graph.items():
      for k,it in itms.items():
         xhop = 0
         yhop = 0
         thop = 0
         frx1 = "ROUTER_ID_"+str(k)+"_x"
         fry1 = "ROUTER_ID_"+str(k)+"_y"
         
         data1 = "packet_list[" + str(pkindex)+ "].dest_index_x = "+str(k)+"_X;"
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)
         data1 = "packet_list[" + str(pkindex)+ "].dest_index_y = "+str(k)+"_Y;"
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)

         data1 = "packet_list[" + str(pkindex)+ "].dest_index_x = "+routeraddrnew[frx1]+"  " 
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)
         data1 = "packet_list[" + str(pkindex)+ "].dest_index_y = "+routeraddrnew[fry1]+"  " 
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)
         data1 = "packet_list[" + str(pkindex)+ "].pkt_index = "+str(pkindex)+"; "
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)
         frx2 = "ROUTER_ID_"+str(keys)+"_x"
         fry2 = "ROUTER_ID_"+str(keys)+"_y"
         
         data1 = "packet_list[" + str(pkindex)+ "].src_index_x = "+str(keys)+"_X;"
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)
         data1 = "packet_list[" + str(pkindex)+ "].src_index_y = "+str(keys)+"_Y;"
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)
         
         data1 = "packet_list[" + str(pkindex)+ "].src_index_x = "+routeraddrnew[frx2]+"  " 
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)
         data1 = "packet_list[" + str(pkindex)+ "].src_index_y = "+routeraddrnew[fry2]+"  " 
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)

         xhop = int(routeraddrnew[frx1]) - int(routeraddrnew[frx2])
         print "xhop", xhop
         yhop = int(routeraddrnew[fry1]) - int(routeraddrnew[fry2])
         print "yhop", yhop
         thop = abs(xhop) + abs(yhop)
         print "thop", thop
         
         data1 = "packet_list[" + str(pkindex)+ "].hopcount = " + str(thop)+ ";"
         mapdef.write(data1)
         datan = '\n'
         mapdef.write(datan)
         pkindex = pkindex + 1
         fhop = fhop + thop
    
  mapdef.close()
  ahop =  repr(float(fhop)/float(pkindex))
  print fhop, pkindex, ahop

  latfilepkt = "hopcountpkt"+ ahop +".txt"
  writeWWWWlatpkt = open(latfilepkt,'a+')
  writeWWWWlatpkt.writelines(item)
  writeWWWWlatpkt.writelines(ahop)
  writeWWWWlatpkt.writelines("\n")
  writeWWWWlatpkt.close()
  return ahop
