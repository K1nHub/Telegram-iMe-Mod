package io.grpc.internal;

import io.grpc.Attributes;
import io.grpc.CallOptions;
import io.grpc.ClientStreamTracer;
import io.grpc.Metadata;
import io.grpc.Status;
import io.grpc.StreamTracer;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public final class StatsTraceContext {
    public static final StatsTraceContext NOOP = new StatsTraceContext(new StreamTracer[0]);
    private final AtomicBoolean closed = new AtomicBoolean(false);
    private final StreamTracer[] tracers;

    public static StatsTraceContext newClientContext(CallOptions callOptions, Attributes attributes, Metadata metadata) {
        List<ClientStreamTracer.Factory> streamTracerFactories = callOptions.getStreamTracerFactories();
        if (streamTracerFactories.isEmpty()) {
            return NOOP;
        }
        ClientStreamTracer.StreamInfo build = ClientStreamTracer.StreamInfo.newBuilder().setTransportAttrs(attributes).setCallOptions(callOptions).build();
        int size = streamTracerFactories.size();
        StreamTracer[] streamTracerArr = new StreamTracer[size];
        for (int i = 0; i < size; i++) {
            streamTracerArr[i] = streamTracerFactories.get(i).newClientStreamTracer(build, metadata);
        }
        return new StatsTraceContext(streamTracerArr);
    }

    StatsTraceContext(StreamTracer[] streamTracerArr) {
        this.tracers = streamTracerArr;
    }

    public void clientOutboundHeaders() {
        for (StreamTracer streamTracer : this.tracers) {
            ((ClientStreamTracer) streamTracer).outboundHeaders();
        }
    }

    public void clientInboundHeaders() {
        for (StreamTracer streamTracer : this.tracers) {
            ((ClientStreamTracer) streamTracer).inboundHeaders();
        }
    }

    public void clientInboundTrailers(Metadata metadata) {
        for (StreamTracer streamTracer : this.tracers) {
            ((ClientStreamTracer) streamTracer).inboundTrailers(metadata);
        }
    }

    public void streamClosed(Status status) {
        if (this.closed.compareAndSet(false, true)) {
            for (StreamTracer streamTracer : this.tracers) {
                streamTracer.streamClosed(status);
            }
        }
    }

    public void outboundMessage(int i) {
        for (StreamTracer streamTracer : this.tracers) {
            streamTracer.outboundMessage(i);
        }
    }

    public void inboundMessage(int i) {
        for (StreamTracer streamTracer : this.tracers) {
            streamTracer.inboundMessage(i);
        }
    }

    public void outboundMessageSent(int i, long j, long j2) {
        for (StreamTracer streamTracer : this.tracers) {
            streamTracer.outboundMessageSent(i, j, j2);
        }
    }

    public void inboundMessageRead(int i, long j, long j2) {
        for (StreamTracer streamTracer : this.tracers) {
            streamTracer.inboundMessageRead(i, j, j2);
        }
    }

    public void outboundUncompressedSize(long j) {
        for (StreamTracer streamTracer : this.tracers) {
            streamTracer.outboundUncompressedSize(j);
        }
    }

    public void outboundWireSize(long j) {
        for (StreamTracer streamTracer : this.tracers) {
            streamTracer.outboundWireSize(j);
        }
    }

    public void inboundUncompressedSize(long j) {
        for (StreamTracer streamTracer : this.tracers) {
            streamTracer.inboundUncompressedSize(j);
        }
    }

    public void inboundWireSize(long j) {
        for (StreamTracer streamTracer : this.tracers) {
            streamTracer.inboundWireSize(j);
        }
    }
}
