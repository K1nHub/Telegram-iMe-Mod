package kotlin.ranges;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Ranges.kt */
/* loaded from: classes6.dex */
class RangesKt__RangesKt {
    public static final void checkStepIsPositive(boolean z, Number step) {
        Intrinsics.checkNotNullParameter(step, "step");
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }
}
