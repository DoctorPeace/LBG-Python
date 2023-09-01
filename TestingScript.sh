#!/bin/bash
cd projects
git pull git@github.com:DoctorPeace/LBG-Python.git
cd LBG-Python
docker build -t lbgpython
