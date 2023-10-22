package io.ktor.utils.p032io.internal;

import io.ktor.utils.p032io.ClosedWriteChannelException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: ByteBufferChannelInternals.kt */
/* renamed from: io.ktor.utils.io.internal.ClosedElement */
/* loaded from: classes4.dex */
public final class ClosedElement {
    public static final Companion Companion = new Companion(null);
    private static final ClosedElement EmptyCause = new ClosedElement(null);
    private final Throwable cause;

    public ClosedElement(Throwable th) {
        this.cause = th;
    }

    public final Throwable getCause() {
        return this.cause;
    }

    public final Throwable getSendException() {
        Throwable th = this.cause;
        return th == null ? new ClosedWriteChannelException("The channel was closed") : th;
    }

    public String toString() {
        return "Closed[" + getSendException() + ']';
    }

    /* compiled from: ByteBufferChannelInternals.kt */
    /* renamed from: io.ktor.utils.io.internal.ClosedElement$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ClosedElement getEmptyCause() {
            return ClosedElement.EmptyCause;
        }
    }
}
