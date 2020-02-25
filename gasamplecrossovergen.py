import json
simplejson = json
import nocmaptoolgen

import time
import random


from random import choice, randint, shuffle


def random_chromosome():
    items = ["M1","M2","M3","M4","M5","M6"]
    shuffle(items)
    return items

def calc_fitness(chromo):
    print "chromo", chromo
    xtot = nocmaptoolgen.cal_latency(chromo)
    print "xtot", xtot
    
    return xtot

def mate(chromo1,chromo2):
    print "chrom1",chromo1
    print "chrom2",chromo2
    c = randint(0, 5)
    a = chromo1[c]
    b = chromo2[c]
    d = chromo1.index(b)
    e = chromo2.index(a)    
    chromo1[c] = b
    chromo2[c] = a
    chromo1[d] = a
    chromo2[e] = b
    print c,a,b
    print "chrom1",chromo1
    print "chrom2",chromo2
    return mutate(chromo1)

def mutate(chromo):
    #a = list(chromo)
    #shuffle(a)    
    return chromo

def alphas(arrs):
    decorated = [(calc_fitness(chromo), chromo) for chromo in arrs]
    decorated.sort(reverse = False)                 
    lowest_str = [chromo[0] for chromo in decorated][:1]
    lowest = 9999
    decorated_fit = []
    for key,itx in decorated:
        
        print key, itx, lowest
        if float(key) <= lowest:
            print itx
            decorated_fit.append(itx)
            lowest = float(key)
    for x in decorated_fit:
        print x
    return [x for x in decorated_fit]

def is_spartan(chromo):
    return sum(chromo) == sum(["M1","M2","M3","M4","M5","M6"])

if __name__ == '__main__':
    import time
    from sys import argv

    start = time.clock()

    if len(argv) < 2:
        NUM_OFFSPRING = 100
    else:
        NUM_OFFSPRING = int(argv[1])

    print "off spring", NUM_OFFSPRING
    
    SPARTAN = ["M1","M2","M3","M4","M5","M6"]
    print "spartan", SPARTAN
    
    SEEDS = [random_chromosome() for i in range(NUM_OFFSPRING)]

    print "seeds", SEEDS
    
    top10 = alphas(SEEDS)
    print "top10"
    print top10

    print "length", len(top10)

    i = 0
    while i < 10:
        print("*** ALPHAS FROM GENERATION: #%i ***" % (i))
        offspring = []
        j = 0
        for j in range(NUM_OFFSPRING):
            print j
            ch = mate(choice(top10), choice(top10))
            if ch not in offspring and len(offspring) < NUM_OFFSPRING:
                offspring.append(ch)
                print "updated", offspring
                
        print "offspring after mating"
        print offspring,len(offspring)
        top10 = alphas(offspring)
        print(top10)
        i += 1


    elapsed = (time.clock() - start) 
    print elapsed
