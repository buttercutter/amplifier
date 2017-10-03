GNET=gnetlist -L ../.. -g spice-noqsi
SPICE=ngspice
SCH_NAME=Class_C_amplifier

%.net : %.sch
	$(GNET) $< -o $@

.PHONY : simulation

simulation : $(SCH_NAME).net 
	$(SPICE) $(SCH_NAME).net 

clean : 
	rm -f $(SCH_NAME).net $ \#* *~
