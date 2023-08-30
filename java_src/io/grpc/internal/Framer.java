package io.grpc.internal;

import io.grpc.Compressor;
import java.io.InputStream;
/* loaded from: classes4.dex */
public interface Framer {
    void close();

    void flush();

    boolean isClosed();

    Framer setCompressor(Compressor compressor);

    void setMaxOutboundMessageSize(int i);

    void writePayload(InputStream inputStream);
}
