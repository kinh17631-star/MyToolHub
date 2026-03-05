import os
import time

# Colors
G = '\033[1;32m'
W = '\033[1;37m'
Y = '\033[1;33m'

os.system("clear")
print(f"{Y}================================{W}")
print(f"{G}     IP-TRACER v1.0 BY AARIF{W}")
print(f"{Y}================================{W}")
time.sleep(1)

# Calling the actual tracer
os.system("python3 IP-Tracer.py")

print(f"\n{G}Audit Completed! Thanks for using.{W}")

