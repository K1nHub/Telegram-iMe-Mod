package io.ktor.utils.p032io.internal;

import io.ktor.utils.p032io.LookAheadSuspendSession;
import java.nio.ByteBuffer;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ByteBufferChannelInternals.kt */
/* renamed from: io.ktor.utils.io.internal.FailedLookAhead */
/* loaded from: classes4.dex */
public final class FailedLookAhead implements LookAheadSuspendSession {
    private final Throwable cause;

    public FailedLookAhead(Throwable cause) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        this.cause = cause;
    }

    @Override // io.ktor.utils.p032io.LookAheadSession
    /* renamed from: consumed */
    public Void mo1925consumed(int i) {
        throw this.cause;
    }

    @Override // io.ktor.utils.p032io.LookAheadSession
    public ByteBuffer request(int i, int i2) {
        throw this.cause;
    }

    @Override // io.ktor.utils.p032io.LookAheadSuspendSession
    public Object awaitAtLeast(int i, Continuation<? super Boolean> continuation) {
        throw this.cause;
    }
}
