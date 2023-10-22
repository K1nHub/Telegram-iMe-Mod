package io.ktor.network.sockets;

import io.ktor.utils.p032io.ByteChannel;
import io.ktor.utils.p032io.ByteChannelKt;
import io.ktor.utils.p032io.ByteReadChannel;
import io.ktor.utils.p032io.ByteWriteChannel;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Sockets.kt */
/* loaded from: classes4.dex */
public final class SocketsKt {
    public static final ByteReadChannel openReadChannel(AReadable aReadable) {
        Intrinsics.checkNotNullParameter(aReadable, "<this>");
        ByteChannel ByteChannel = ByteChannelKt.ByteChannel(false);
        aReadable.attachForReading(ByteChannel);
        return ByteChannel;
    }

    public static /* synthetic */ ByteWriteChannel openWriteChannel$default(AWritable aWritable, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return openWriteChannel(aWritable, z);
    }

    public static final ByteWriteChannel openWriteChannel(AWritable aWritable, boolean z) {
        Intrinsics.checkNotNullParameter(aWritable, "<this>");
        ByteChannel ByteChannel = ByteChannelKt.ByteChannel(z);
        aWritable.attachForWriting(ByteChannel);
        return ByteChannel;
    }

    public static final Connection connection(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        return new Connection(socket, openReadChannel(socket), openWriteChannel$default(socket, false, 1, null));
    }
}
