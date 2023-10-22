package io.ktor.network.sockets;

import io.ktor.utils.p032io.ByteChannel;
import io.ktor.utils.p032io.WriterJob;
/* compiled from: Sockets.kt */
/* loaded from: classes4.dex */
public interface AReadable {
    WriterJob attachForReading(ByteChannel byteChannel);
}
