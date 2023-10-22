package kotlinx.atomicfu;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.TraceBase;
/* compiled from: AtomicFU.kt */
/* loaded from: classes4.dex */
public final class AtomicRef<T> {
    private final TraceBase trace;
    private volatile T value;

    public AtomicRef(T t, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        this.trace = trace;
        this.value = t;
    }

    public final T getValue() {
        return this.value;
    }

    public final void setValue(T t) {
        this.value = t;
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("set(" + t + ')');
        }
    }

    public String toString() {
        return String.valueOf(this.value);
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
        AtomicReferenceFieldUpdater.newUpdater(AtomicRef.class, Object.class, AppMeasurementSdk.ConditionalUserProperty.VALUE);
    }
}
