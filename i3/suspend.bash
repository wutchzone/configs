#!/bin/bash

xlock -m matrix &
sleep 1
systemctl suspend
