package io.ktor.utils.p032io.internal;

import io.ktor.utils.p032io.LookAheadSuspendSession;
import java.nio.ByteBuffer;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
/* compiled from: ByteBufferChannelInternals.kt */
/* renamed from: io.ktor.utils.io.internal.TerminatedLookAhead */
/* loaded from: classes4.dex */
public final class TerminatedLookAhead implements LookAheadSuspendSession {
    public static final TerminatedLookAhead INSTANCE = new TerminatedLookAhead();

    @Override // io.ktor.utils.p032io.LookAheadSession
    public ByteBuffer request(int i, int i2) {
        return null;
    }

    private TerminatedLookAhead() {
    }

    @Override // io.ktor.utils.p032io.LookAheadSession
    /* renamed from: consumed */
    public void mo1930consumed(int i) {
        if (i <= 0) {
            return;
        }
        throw new IllegalStateException("Unable to mark " + i + " bytes consumed for already terminated channel");
    }

    @Override // io.ktor.utils.p032io.LookAheadSuspendSession
    public Object awaitAtLeast(int i, Continuation<? super Boolean> continuation) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("atLeast parameter shouldn't be negative: " + i).toString());
        }
        if (!(i <= 4088)) {
            throw new IllegalArgumentException(("atLeast parameter shouldn't be larger than max buffer size of 4088: " + i).toString());
        }
        return Boxing.boxBoolean(false);
    }
}
