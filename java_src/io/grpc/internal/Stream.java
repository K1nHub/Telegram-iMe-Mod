package io.grpc.internal;

import io.grpc.Compressor;
import java.io.InputStream;
/* loaded from: classes4.dex */
public interface Stream {
    void flush();

    void request(int i);

    void setCompressor(Compressor compressor);

    void writeMessage(InputStream inputStream);
}
