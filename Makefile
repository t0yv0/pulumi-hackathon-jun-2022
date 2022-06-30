start.services:: start.jaeger start.otelcol
stop.services:: stop.jaeger stop.otelcol

pulumi.up::
	cd pulumi-project && pulumi up --tracing http://localhost:9411/api/v1/spans --yes

start.jaeger::
	./script/start-jaeger.sh

start.otelcol::
	./script/start-otelcol.sh

stop.jaeger::
	./script/stop-jaeger.sh

stop.otelcol::
	./script/stop-otelcol.sh
