#!/bin/sh
#
#SBATCH --job-name=annotations
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem-per-cpu=4096
#SBATCH --partition=batch
#SBATCH --time=11:00:00
#
javac -cp ../annotations/Gene.java:../libs/slib-dist-0.9-all-jar.jar:../annotations/ ../annotations/Exp4.java
java -cp  ../libs/slib-dist-0.9-all-jar.jar:../annotations/ Exp4
