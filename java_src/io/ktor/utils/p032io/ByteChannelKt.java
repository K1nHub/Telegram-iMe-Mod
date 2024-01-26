package io.ktor.utils.p032io;
/* compiled from: ByteChannel.kt */
/* renamed from: io.ktor.utils.io.ByteChannelKt */
/* loaded from: classes4.dex */
public final class ByteChannelKt {
    public static final ByteChannel ByteChannel(boolean z) {
        return new ByteBufferChannel(z, null, 0, 6, null);
    }
}
