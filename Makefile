start.services:: start.jaeger start.otelcol
stop.services:: stop.jaeger stop.otelcol

start.jaeger::
	./script/start-jaeger.sh

start.otelcol::
	./script/start-otelcol.sh

stop.jaeger::
	./script/stop-jaeger.sh

stop.otelcol::
	./script/stop-otelcol.sh
