v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -180 130 -70 {
lab=Vin}
N 170 -150 170 -100 {
lab=Vout}
N 100 -130 130 -130 {
lab=Vin}
N 170 -130 210 -130 {
lab=Vout}
N 170 -240 170 -210 {
lab=Vdd}
N 170 -40 170 0 {
lab=gnd}
N 170 -70 200 -70 {
lab=gnd}
N 200 -70 200 -20 {
lab=gnd}
N 170 -20 200 -20 {
lab=gnd}
N 170 -180 200 -180 {
lab=Vdd}
N 200 -220 200 -180 {
lab=Vdd}
N 170 -220 200 -220 {
lab=Vdd}
C {devices/ipin.sym} 100 -130 0 0 {name=p1 lab=Vin}
C {devices/ipin.sym} 170 0 3 0 {name=p2 lab=gnd}
C {devices/ipin.sym} 170 -240 1 0 {name=p3 lab=Vdd}
C {devices/opin.sym} 210 -130 0 0 {name=p4 lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} 150 -70 0 0 {name=M3
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 150 -180 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
