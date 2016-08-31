CSDP?=csdp
STDTIME=/usr/bin/time -f "$$CORE (real: %e, user: %U, sys: %S, mem: %M ko)"

CORES=$(shell grep -c ^processor /proc/cpuinfo)

all:
	@echo "Testing $(CSDP)"
	$(CSDP) sos19824d.dat-s || true
	@echo "Testing on up to $(CORES) cores"
	@for CORE in $(shell seq 0 $(CORES)); do CSDP="$(CSDP)" $(STDTIME) taskset -c 0-$$CORE ./test.sh; done
