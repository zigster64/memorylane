all: start

clean:
	rm -rf _build priv mems.tgz

release:
	MIX_ENV=prod mix release
	tar cvfz mems.tgz _build priv
	ls -l mems.tgz

start:
	_build/rel/prod/mems/bin/mem start_iex
