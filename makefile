install:
	deno install --allow-read --allow-run --allow-write --allow-net -f -q --unstable https://deno.land/x/denon@2.4.0/denon.ts
run:
	denon start
test:
	deno test
format:
	deno fmt
debug:
	deno run -A --inspect-brk index.ts
bundle:
	rm -rf build/
	mkdir build
	deno bundle index.ts build/index.ts