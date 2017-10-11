v 20130925 2
C 40000 40000 0 0 0 title-B.sym
T 47500 50000 9 14 1 0 0 0 1
Class-C amplifier
C 47600 44500 1 0 0 gnd-1.sym
C 46600 44700 1 90 0 resistor-1.sym
{
T 46200 45000 5 10 0 0 90 0 1
device=RESISTOR
T 46300 45300 5 10 1 1 180 0 1
refdes=Rb
T 45900 44900 5 10 1 1 0 0 1
value=1000
}
C 45100 45600 1 0 0 capacitor-1.sym
{
T 45300 46300 5 10 0 0 0 0 1
device=CAPACITOR
T 45300 46100 5 10 1 1 0 0 1
refdes=Cin
T 45300 46500 5 10 0 0 0 0 1
symversion=0.1
T 45700 46000 5 10 1 1 0 0 1
value=1nF
}
C 46400 44100 1 0 0 gnd-1.sym
C 44600 43700 1 0 0 gnd-1.sym
N 44700 44300 44700 44000 4
N 46500 44700 46500 44400 4
N 47700 45300 47700 44800 4
N 46500 45800 46500 45600 4
N 45100 45800 44700 45800 4
N 44700 45800 44700 45500 4
{
T 44700 45800 5 10 0 0 0 0 1
netname=Vin
}
N 47700 46300 47700 46700 4
{
T 48300 46400 5 10 1 1 0 0 1
netname=Vout
}
C 49500 44000 1 0 0 vdc-1.sym
{
T 50200 44850 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 50200 45050 5 10 0 0 0 0 1
footprint=none
T 50200 44650 5 10 1 1 0 0 1
refdes=Vd
T 50200 44450 5 10 1 1 0 0 1
value=3.3V
}
C 49700 43700 1 0 0 gnd-1.sym
N 49800 46000 49800 45200 4
{
T 49800 46000 5 10 1 1 0 0 1
netname=Vdd
}
T 50100 46800 9 10 1 0 0 0 8
spice-epilog=.control
tran 1n 3u
plot Vin Vout v(Vin, Vbase)
plot i(V_IP1) v(Vin, Vbase)
plot i(V_IP1) Vout
pss 16e6 2e-6 Vout 1024 10 5 5e-3 uic
.endc

N 46000 45800 47100 45800 4
{
T 46000 45800 5 10 0 0 0 0 1
netname=Vbase
}
C 47100 45300 1 0 0 npn-3.sym
{
T 48000 45800 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 48000 45800 5 10 1 1 0 0 1
refdes=Q1
T 47100 45300 5 10 0 0 0 0 1
file=./Bipolar_Junction_Transistor.lib
T 47100 45300 5 10 0 0 0 0 1
model-name=npndie
}
N 47700 46500 48200 46500 4
C 45000 44300 1 0 1 vac-1.sym
{
T 44300 44950 5 10 1 1 0 6 1
refdes=Vin
T 44300 45150 5 10 0 0 0 6 1
device=vac
T 44300 45350 5 10 0 0 0 6 1
footprint=none
T 44300 44750 5 10 1 1 0 6 1
value=ac 1 sin(0 1 15.9154943092MEG)
}
C 48500 48700 1 270 0 capacitor-1.sym
{
T 49200 48500 5 10 0 0 270 0 1
device=CAPACITOR
T 49400 48500 5 10 0 0 270 0 1
symversion=0.1
T 49000 48400 5 10 1 1 0 0 1
refdes=C1
T 48900 48000 5 10 1 1 0 0 1
value=100nF
}
C 47800 47800 1 90 0 inductor-1.sym
{
T 47300 48000 5 10 0 0 90 0 1
device=INDUCTOR
T 47100 48000 5 10 0 0 90 0 1
symversion=0.1
T 47500 48400 5 10 1 1 180 0 1
refdes=L1
T 47000 48000 5 10 1 1 0 0 1
value=1nH
}
N 46600 47600 48700 47600 4
N 47700 47600 47700 47800 4
N 46600 49000 48700 49000 4
N 47700 49000 47700 48700 4
N 48700 49000 48700 48700 4
N 48200 49400 48200 49000 4
{
T 48200 49400 5 10 1 1 0 0 1
netname=Vdd
}
N 48700 47600 48700 47800 4
C 46700 47800 1 90 0 resistor-1.sym
{
T 46300 48100 5 10 0 0 90 0 1
device=RESISTOR
T 46400 48400 5 10 1 1 180 0 1
refdes=Rtank
T 46000 48000 5 10 1 1 0 0 1
value=10
}
N 46600 49000 46600 48700 4
N 46600 47800 46600 47600 4
N 47700 47300 47700 47600 4
C 47500 47300 1 270 0 current_probe.sym
{
T 48000 47300 5 10 0 0 270 0 1
device=CURRENT_PROBE
T 47100 46970 5 6 1 1 0 0 1
refdes=V_IP1
T 48200 47300 5 10 0 0 270 0 1
value=DC 0V
T 47500 47300 5 10 0 0 180 0 1
source=./current_probe.sym
}
