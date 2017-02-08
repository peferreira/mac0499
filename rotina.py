from os import walk
import os, sys

retvalue = os.system("mkdir -p ./out/ift/")
for (dirpath, dirnames, filenames) in walk("../grabcut/data2"):
    for filename in filenames:
            splitFilename = filename.split(".")
            print splitFilename[0]
            retvalue = os.system("./eroeval 1 ../grabcut/data2/"+filename+" ../grabcut/gtruth/"+splitFilename[0]+".pgm 1 100")
            retvalue = os.system("mv ./out/dice_01.txt ./out/ift/"+splitFilename[0]+".txt")


areas = ["100","400","900","1600"]
for area in areas:
    retvalue = os.system("mkdir -p ./out/ift_sp/"+area+"/")
    for (dirpath, dirnames, filenames) in walk("../grabcut/data2"):
        for filename in filenames:
                splitFilename = filename.split(".")
                print splitFilename[0]
                retvalue = os.system("./eroeval 1 ../grabcut/data2/"+filename+" ../grabcut/gtruth/"+splitFilename[0]+".pgm 2 "+area)
                retvalue = os.system("mv ./out/dice_02.txt ./out/ift_sp/"+area+"/"+splitFilename[0]+".txt")
