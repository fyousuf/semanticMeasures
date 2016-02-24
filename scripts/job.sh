#!/bin/sh
#
#SBATCH --job-name=directGroupwiseMeasures_1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem-per-cpu=4096
#SBATCH --partition=batch
#SBATCH --time=23:00:00
#
javac -cp ../directGroupwiseMeasures/SIM_FRAMEWORK_DAG_SET_BADER_2003/Gene.java:../libs/slib-dist-0.9-all-jar.jar:../directGroupwiseMeasures/SIM_FRAMEWORK_DAG_SET_BADER_2003/ ../directGroupwiseMeasures/SIM_FRAMEWORK_DAG_SET_BADER_2003/Exp5.java
java -cp  ../libs/slib-dist-0.9-all-jar.jar:../directGroupwiseMeasures/SIM_FRAMEWORK_DAG_SET_BADER_2003/ Exp5
