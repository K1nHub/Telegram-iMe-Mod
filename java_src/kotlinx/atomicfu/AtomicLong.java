package kotlinx.atomicfu;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.TraceBase;
/* compiled from: AtomicFU.kt */
/* loaded from: classes4.dex */
public final class AtomicLong {
    private final TraceBase trace;
    private volatile long value;

    public AtomicLong(long j, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        this.trace = trace;
        this.value = j;
    }

    public final long getValue() {
        return this.value;
    }

    public final void setValue(long j) {
        this.value = j;
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("set(" + j + ')');
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
        AtomicLongFieldUpdater.newUpdater(AtomicLong.class, AppMeasurementSdk.ConditionalUserProperty.VALUE);
    }
}
