package io.ktor.network.sockets;

import io.ktor.utils.p032io.ByteChannel;
import io.ktor.utils.p032io.ReaderJob;
/* compiled from: Sockets.kt */
/* loaded from: classes4.dex */
public interface AWritable {
    ReaderJob attachForWriting(ByteChannel byteChannel);
}
