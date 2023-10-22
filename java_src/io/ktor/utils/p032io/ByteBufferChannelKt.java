package io.ktor.utils.p032io;
/* compiled from: ByteBufferChannel.kt */
/* renamed from: io.ktor.utils.io.ByteBufferChannelKt */
/* loaded from: classes4.dex */
public final class ByteBufferChannelKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Void rethrowClosed(Throwable th) {
        Throwable th2;
        try {
            th2 = ExceptionUtilsJvmKt.tryCopyException(th, th);
        } catch (Throwable unused) {
            th2 = null;
        }
        if (th2 == null) {
            throw th;
        }
        throw th2;
    }
}
