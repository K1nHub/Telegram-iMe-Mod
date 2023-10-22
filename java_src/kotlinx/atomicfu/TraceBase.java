package kotlinx.atomicfu;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Trace.common.kt */
/* loaded from: classes4.dex */
public class TraceBase {
    public void append(Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    /* compiled from: Trace.common.kt */
    /* loaded from: classes4.dex */
    public static final class None extends TraceBase {
        public static final None INSTANCE = new None();

        private None() {
        }
    }
}
