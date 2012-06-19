all: probes.h app


probes.h: probes.d
	dtrace -s probes.d -h -o probes.h

app: app.c probes.h
	cc -o app app.c

run: app
	dtrace -s script.d -c ./app

clean:
	rm -f probes.h app