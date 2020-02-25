import os, sys
import array
import itertools
import math
import time
import json
simplejson = json

object1A = open("M1.txt",'r')
object2A = open("M2.txt",'r')
object3A = open("M3.txt",'r')
object4A = open("M4.txt",'r')
object5A = open("M5.txt",'r')
object6A = open("M6.txt",'r')

objectpA = open("packet.txt",'w')


data1A = object1A.read()
objectpA.write(data1A)

data2A = object2A.read()
objectpA.write(data2A)

data3A = object3A.read()
objectpA.write(data3A)

data4A = object4A.read()
objectpA.write(data4A)

data5A = object5A.read()
objectpA.write(data5A)

data6A = object6A.read()
objectpA.write(data6A)

object1A.close()
object2A.close()
object3A.close()
object4A.close()
object5A.close()
object6A.close()

objectpA.close()

writeWWWW = open("avglatencypkt.txt",'w')
writeWWW = open("avglatency.txt",'w')

with open("perlist.txt") as f: A = simplejson.load(f)
  #A = list(itertools.permutations(['M5','M3','M4','M2','M1','M6'], 6))
for item in A:
  print item
  print item[0]
  print item[1]
  print item[2]
  print item[3]
  print item[4]
  print item[5]
    
  filename1 ="mapping_def.txt"
  mapdef = open(filename1,'w')

  filename2 ="packet_idx.txt"
  pktidx = open(filename2,'w')
  
  if item[0] == "M5":
     data1 = "#define M5_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M5_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[0].start_packet_index = 7;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[0].end_packet_index = 7;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[0] == "M3":
     data1 = "#define M3_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M3_Y 0"
     mapdef.write(data2)
     datan = '\n'
     mapdef.write(datan)  
     mapdef.write(datan)
     data3 = "router[0].start_packet_index = 3;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[0].end_packet_index = 5;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[0] == "M4":
     data1 = "#define M4_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M4_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[0].start_packet_index = 6;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[0].end_packet_index = 6;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[0] == "M2":
     data1 = "#define M2_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M2_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[0].start_packet_index = 2;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[0].end_packet_index = 2;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[0] == "M1":
     data1 = "#define M1_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M1_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[0].start_packet_index = 0;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[0].end_packet_index = 1;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[0] == "M6":
     data1 = "#define M6_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M6_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[0].start_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[0].end_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  else:
     print "invalid"

  if item[1] == "M5":
     data1 = "#define M5_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M5_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[1].start_packet_index = 7;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[1].end_packet_index = 7;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[1] == "M3":
     data1 = "#define M3_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M3_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[1].start_packet_index = 3;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[1].end_packet_index = 5;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[1] == "M4":
     data1 = "#define M4_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M4_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[1].start_packet_index = 6;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[1].end_packet_index = 6;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[1] == "M2":
     data1 = "#define M2_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M2_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[1].start_packet_index = 2;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[1].end_packet_index = 2;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[1] == "M1":
     data1 = "#define M1_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M1_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[1].start_packet_index = 0;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[1].end_packet_index = 1;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[1] == "M6":
     data1 = "#define M6_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M6_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[1].start_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[1].end_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  else:
     print "invalid"

  if item[2] == "M5":
     data1 = "#define M5_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M5_Y 0"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[2].start_packet_index = 7;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[2].end_packet_index = 7;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[2] == "M3":
     data1 = "#define M3_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M3_Y 0"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[2].start_packet_index = 3;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[2].end_packet_index = 5;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[2] == "M4":
     data1 = "#define M4_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M4_Y 0"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[2].start_packet_index = 6;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[2].end_packet_index = 6;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[2] == "M2":
     data1 = "#define M2_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M2_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[2].start_packet_index = 2;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[2].end_packet_index = 2;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[2] == "M1":
     data1 = "#define M1_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M1_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[2].start_packet_index = 0;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[2].end_packet_index = 1;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[2] == "M6":
     data1 = "#define M6_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M6_Y 0"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[2].start_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[2].end_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  else:
     print "invalid"

  if item[3] == "M5":
     data1 = "#define M5_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M5_Y 1"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[3].start_packet_index = 7;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[3].end_packet_index = 7;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[3] == "M3":
     data1 = "#define M3_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M3_Y 1"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[3].start_packet_index = 3;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[3].end_packet_index = 5;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[3] == "M4":
     data1 = "#define M4_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M4_Y 1"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[3].start_packet_index = 6;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[3].end_packet_index = 6;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[3] == "M2":
     data1 = "#define M2_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M2_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[3].start_packet_index = 2;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[3].end_packet_index = 2;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[3] == "M1":
     data1 = "#define M1_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M1_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[3].start_packet_index = 0;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[3].end_packet_index = 1;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[3] == "M6":
     data1 = "#define M6_X 0"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M6_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[3].start_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[3].end_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  else:
     print "invalid"

  if item[4] == "M5":
     data1 = "#define M5_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M5_Y 1"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[4].start_packet_index = 7;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[4].end_packet_index = 7;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[4] == "M3":
     data1 = "#define M3_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M3_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[4].start_packet_index = 3;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[4].end_packet_index = 5;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[4] == "M4":
     data1 = "#define M4_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M4_Y 1"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[4].start_packet_index = 6;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[4].end_packet_index = 6;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[4] == "M2":
     data1 = "#define M2_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M2_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[4].start_packet_index = 2;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[4].end_packet_index = 2;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[4] == "M1":
     data1 = "#define M1_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M1_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[4].start_packet_index = 0;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[4].end_packet_index = 1;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[4] == "M6":
     data1 = "#define M6_X 1"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M6_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[4].start_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[4].end_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  else:
     print "invalid"

  if item[5] == "M5":
     data1 = "#define M5_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M5_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[5].start_packet_index = 7;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[5].end_packet_index = 7;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)
     pktidx.write(datan)
  elif item[5] == "M3":
     data1 = "#define M3_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M3_Y 1"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[5].start_packet_index = 3;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[5].end_packet_index = 5;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[5] == "M4":
     data1 = "#define M4_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M4_Y 1"
     mapdef.write(data2)          
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[5].start_packet_index = 6;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[5].end_packet_index = 6;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[5] == "M2":
     data1 = "#define M2_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M2_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[5].start_packet_index = 2;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[5].end_packet_index = 2;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[5] == "M1":
     data1 = "#define M1_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M1_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[5].start_packet_index = 0;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[5].end_packet_index = 1;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  elif item[5] == "M6":
     data1 = "#define M6_X 2"
     mapdef.write(data1)
     datan = '\n'
     mapdef.write(datan)
     data2 = "#define M6_Y 1"
     mapdef.write(data2)     
     datan = '\n'
     mapdef.write(datan)
     mapdef.write(datan)
     data3 = "router[5].start_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data3)
     datan = '\n'
     pktidx.write(datan)
     data4 = "router[5].end_packet_index = INVALID_PACKET_INDEX;"
     pktidx.write(data4)     
     datan = '\n'
     pktidx.write(datan)     
     pktidx.write(datan)
  else:
     print "invalid"
 
  mapdef.close()
  pktidx.close()

  object1B = open("noc_def_6.txt",'r')
  filename1B ="mapping_def.txt"
  object2B = open(filename1,'r')
  object3B = open("noc_var.txt",'r')
  object4B = open("router_start.txt",'r')
  object5B = open("gtol.txt",'r')
  object6B = open("inject.txt",'r')
  object7B = open("switch.txt",'r')
  object8B = open("arb.txt",'r')
  object9B = open("receive.txt",'r')
  object10B = open("topology.txt",'r')
  object11B = open("ltog.txt",'r')
  object12B = open("router_end.txt",'r')
  object13B = open("controller.txt",'r')
  object14B = open("startup_6_pkt.txt",'r')
  filename2B ="packet_idx.txt"
  object15B = open(filename2,'r')
  object16B = open("packet.txt",'r')
  object17B = open("startup_6_init.txt",'r')
  object18B = open("init.txt",'r')

  object19B = open("noc6.txt",'w')

  data1B = object1B.read()
  object19B.write(data1B)

  data2B = object2B.read()
  object19B.write(data2B)

  data3B = object3B.read()
  object19B.write(data3B)

  data4B = object4B.read()
  object19B.write(data4B)

  data5B = object5B.read()
  object19B.write(data5B)

  data6B = object6B.read()
  object19B.write(data6B)

  data7B = object7B.read()
  object19B.write(data7B)

  data8B = object8B.read()
  object19B.write(data8B)

  data9B = object9B.read()
  object19B.write(data9B)

  data10B = object10B.read()
  object19B.write(data10B)

  data11B = object11B.read()
  object19B.write(data11B)

  data12B = object12B.read()
  object19B.write(data12B)

  data13B = object13B.read()
  object19B.write(data13B)

  data14B = object14B.read()
  object19B.write(data14B)

  data15B = object15B.read()
  object19B.write(data15B)

  data16B = object16B.read()
  object19B.write(data16B)

  data17B = object17B.read()
  object19B.write(data17B)

  data18B = object18B.read()
  object19B.write(data18B)

  object1B.close()
  object2B.close()
  object3B.close()
  object4B.close()
  object5B.close()
  object6B.close()
  object7B.close()
  object8B.close()
  object9B.close()
  object10B.close()
  object11B.close()
  object12B.close()
  object13B.close()
  object14B.close()
  object15B.close()
  object16B.close()
  object17B.close()
  object18B.close()
  object19B.close()

  from subprocess import call
  filename="noc6.txt"
  call("spin -a " + filename,shell=True)
  call("gcc -DSAFETY -DVECTORSZ=3000 -DBITSTATE -o pan pan.c",shell=True)
  filename3 = "result6map.txt"
  objectpA3 = open("result6map.txt",'w')
  call("./pan -m100000 -k800 w20>>"+filename3,shell=True)

  readFile = open(filename3) 
  lines = readFile.readlines() 
  readFile.close()
  filename4 ="result6mapdata.txt"
  w = open(filename4,'w') 
  w.writelines([item1 for item1 in lines[:-42]]) 
  w.close() 

  filename5 ="result6mapdata.txt" 
  filename6 ="result6mapdatasort.txt"
  readR = open(filename5,'r')
  writeW = open(filename6,'w') 
  prev = None 
  for line in sorted(readR,reverse=True): 
     line = line.strip() 
     if prev is not None and not line.startswith(prev): 
       writeW.writelines(prev)
       writeW.writelines('\n')
     prev = line 
  if prev is not None: 
     writeW.writelines(prev)
     writeW.writelines('\n')
  readR.close()
  writeW.close()
  
  filename7 ="result6mapdatasort.txt"
  filename8 ="result6mapdatasortasc.txt"
  prev = None
  prevword = None
  readRR = open(filename7,'r')
  writeWW = open(filename8,'w') 
  for line in sorted(readRR): 
     line = line.strip()
     word = line.split(",")
     if prev is not None and not line.startswith(prev) and word[0] is not prevword:
       writeWW.writelines(prev)
       writeWW.writelines('\n')       
     prev = line
     prevword = word[0]
  if prev is not None: 
     writeWW.writelines(prev)
     writeWW.writelines('\n')  
  readRR.close()
  writeWW.close()

  filename8 ="result6mapdatasortasc.txt"
  readRRR = open(filename8,'r')
  s = 0
  for line in readRRR:
     a = line.split(",")
     s = s + float(a[1])  
  m = float(s/8)
  fl = repr(s/8.0)
  print item,m,fl
  latfile = "avglatency"+ fl +".txt"
  writeWWWlat = open(latfile,'a+')
  writeWWW.writelines(item)
  writeWWW.writelines(",")
  writeWWW.writelines(fl)
  writeWWW.writelines("\n")
  writeWWWlat.writelines(item)
  writeWWWlat.writelines(",")
  writeWWWlat.writelines(fl)
  writeWWWlat.writelines("\n")
  readRRR.close()

  filename8 ="result6mapdatasortasc.txt"
  readRRRR = open(filename8,'r')
  writeWWWW.writelines(item)
  writeWWWW.writelines(",")  
  str_list = []
  for line in readRRRR:
     a = line.split(",")
     str_list.append(a[1])
  writeWWWW.writelines(format(str_list))
  writeWWWW.writelines("\n")
  writeWWWW.writelines(",")
  writeWWWW.writelines(fl)
  writeWWWW.writelines("\n")
  latfilepkt = "avglatencypkt"+ fl +".txt"
  writeWWWWlatpkt = open(latfilepkt,'a+')
  writeWWWWlatpkt.writelines(item)
  writeWWWWlatpkt.writelines(",")
  writeWWWWlatpkt.writelines(format(str_list))
  writeWWWWlatpkt.writelines("\n")
  writeWWWWlatpkt.writelines(",")
  writeWWWWlatpkt.writelines(fl)
  writeWWWWlatpkt.writelines("\n")
  readRRRR.close()

  writeWWW.close()
  writeWWWlat.close()
  writeWWWW.close()
  writeWWWWlatpkt.close()
