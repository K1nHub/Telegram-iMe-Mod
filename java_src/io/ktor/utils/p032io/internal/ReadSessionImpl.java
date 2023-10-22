package io.ktor.utils.p032io.internal;

import io.ktor.utils.p032io.ByteBufferChannel;
import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReadSessionImpl.kt */
/* renamed from: io.ktor.utils.io.internal.ReadSessionImpl */
/* loaded from: classes4.dex */
public final class ReadSessionImpl {
    public ReadSessionImpl(ByteBufferChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        ChunkBuffer.Companion.getEmpty();
    }
}
