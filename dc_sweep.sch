v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -110 90 -110 {
lab=vgs}
N 130 -170 130 -140 {
lab=vds}
N 130 -170 290 -170 {
lab=vds}
N 290 -170 290 -140 {
lab=vds}
N 130 -110 150 -110 {
lab=GND}
N 150 -110 150 -80 {
lab=GND}
N 130 -80 150 -80 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 110 -110 0 0 {name=M1
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
C {devices/vsource.sym} 30 -80 0 0 {name=Vgs value=0
 savecurrent=false}
C {devices/vsource.sym} 290 -110 0 0 {name=Vds value=0 savecurrent=false}
C {devices/gnd.sym} 30 -50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 130 -80 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 290 -80 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -170 -250 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vds 0 1.8 1m Vgs 0 1.8 .5
.save all
.end"}
C {devices/lab_pin.sym} 30 -110 0 0 {name=p1 sig_type=std_logic lab=vgs}
C {devices/lab_pin.sym} 290 -140 0 0 {name=p2 sig_type=std_logic lab=vds
}
