package io.grpc;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3.dex */
public interface Drainable {
    int drainTo(OutputStream outputStream) throws IOException;
}
