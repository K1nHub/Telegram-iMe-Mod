package org.koin.core.time;

import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.p047mp.KoinPlatformTimeTools;
/* compiled from: Measure.kt */
/* loaded from: classes4.dex */
public final class MeasureKt {
    public static final double measureDuration(Function0<Unit> code) {
        Intrinsics.checkNotNullParameter(code, "code");
        return ((Number) measureTimedValue(code).getSecond()).doubleValue();
    }

    public static final <T> Pair<T, Double> measureDurationForResult(Function0<? extends T> code) {
        Intrinsics.checkNotNullParameter(code, "code");
        Pair measureTimedValue = measureTimedValue(code);
        return new Pair<>(measureTimedValue.component1(), Double.valueOf(((Number) measureTimedValue.component2()).doubleValue()));
    }

    private static final <T> Pair<T, Double> measureTimedValue(Function0<? extends T> function0) {
        KoinPlatformTimeTools koinPlatformTimeTools = KoinPlatformTimeTools.INSTANCE;
        return new Pair<>(function0.invoke(), Double.valueOf((koinPlatformTimeTools.getTimeInNanoSeconds() - koinPlatformTimeTools.getTimeInNanoSeconds()) / 1000000.0d));
    }
}
