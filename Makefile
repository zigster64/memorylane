all: 
	@cat Makefile

local:
	mix phx.server

clean:
	rm -rf _build priv mems.tgz

release:
	MIX_ENV=prod mix release
	tar cvfz mems.tgz _build priv
	ls -l mems.tgz

upload:
	${MLR_SCP} mems.tgz ${MLR_TARBALLS}

run_dev:
	MIX_ENV=dev mix phx.server

run_prod:
	MIX_ENV=prod mix phx.server

start:
	_build/prod/rel/mems/bin/mems start_iex

