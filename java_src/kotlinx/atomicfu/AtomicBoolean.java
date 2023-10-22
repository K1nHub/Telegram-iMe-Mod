package kotlinx.atomicfu;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.TraceBase;
/* compiled from: AtomicFU.kt */
/* loaded from: classes4.dex */
public final class AtomicBoolean {
    private volatile int _value;
    private final TraceBase trace;

    public AtomicBoolean(boolean z, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        this.trace = trace;
        this._value = z ? 1 : 0;
    }

    public final boolean getValue() {
        return this._value != 0;
    }

    public final void setValue(boolean z) {
        this._value = z ? 1 : 0;
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("set(" + z + ')');
        }
    }

    public String toString() {
        return String.valueOf(getValue());
    }

    /* compiled from: AtomicFU.kt */
    /* loaded from: classes4.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        AtomicIntegerFieldUpdater.newUpdater(AtomicBoolean.class, "_value");
    }
}
