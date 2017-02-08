from os import walk
import os, sys

arquivos = {}
mediaAcuracias = {}
path = sys.argv[1]


for (dirpath, dirnames, filenames) in walk(path):
    for filename in filenames:
            file = open(path+filename, "r")
            acuracias = {}
            lines = file.readlines()
            for line in lines:
                if "#" not in line:
                    temp = line.split("\n")
                    line = temp[0].split(" ")
                    raio = int(float(line[0]))
                    acuracias[raio] = line[1]
                    arquivos[filename] = acuracias

for nome, acuracias in arquivos.items():
    print nome
    for raio, acuracia in acuracias.items():
        if raio not in mediaAcuracias:
            mediaAcuracias[raio] = {"acc":float(acuracia), "num":1}
        else:
            mediaAcuracias[raio]["acc"] += float(acuracia)
            mediaAcuracias[raio]["num"] += 1

for raio,obj in mediaAcuracias.items():
    acuraciaMedia = obj["acc"]/obj["num"]
    print str(raio)+" ("+ str(obj['num'])+ "): "+ str(acuraciaMedia)
