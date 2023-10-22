package io.ktor.utils.p032io.internal;

import io.ktor.utils.p032io.ByteBufferChannel;
import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WriteSessionImpl.kt */
/* renamed from: io.ktor.utils.io.internal.WriteSessionImpl */
/* loaded from: classes4.dex */
public final class WriteSessionImpl {
    private ByteBufferChannel current;

    public WriteSessionImpl(ByteBufferChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.current = channel.resolveChannelInstance$ktor_io();
        ChunkBuffer.Companion companion = ChunkBuffer.Companion;
        companion.getEmpty().m1912getMemorySK3TCg8();
        companion.getEmpty();
        RingBufferCapacity ringBufferCapacity = this.current.currentState$ktor_io().capacity;
    }
}
