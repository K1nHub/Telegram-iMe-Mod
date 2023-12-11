package kotlin.time;

import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: Duration.kt */
/* loaded from: classes4.dex */
public final class DurationKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final long millisToNanos(long j) {
        return j * 1000000;
    }

    public static final long toDuration(int i, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit.compareTo(DurationUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(i, unit, DurationUnit.NANOSECONDS));
        }
        return toDuration(i, unit);
    }

    public static final long toDuration(long j, DurationUnit unit) {
        long coerceIn;
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        long convertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(4611686018426999999L, durationUnit, unit);
        if (new LongRange(-convertDurationUnitOverflow, convertDurationUnitOverflow).contains(j)) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j, unit, durationUnit));
        }
        coerceIn = RangesKt___RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j, unit, DurationUnit.MILLISECONDS), -4611686018427387903L, 4611686018427387903L);
        return durationOfMillis(coerceIn);
    }

    public static final long toDuration(double d, DurationUnit unit) {
        long roundToLong;
        long roundToLong2;
        Intrinsics.checkNotNullParameter(unit, "unit");
        double convertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, unit, DurationUnit.NANOSECONDS);
        if (!(!Double.isNaN(convertDurationUnit))) {
            throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
        }
        roundToLong = MathKt__MathJVMKt.roundToLong(convertDurationUnit);
        if (new LongRange(-4611686018426999999L, 4611686018426999999L).contains(roundToLong)) {
            return durationOfNanos(roundToLong);
        }
        roundToLong2 = MathKt__MathJVMKt.roundToLong(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, unit, DurationUnit.MILLISECONDS));
        return durationOfMillisNormalized(roundToLong2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x00a9 A[EDGE_INSN: B:170:0x00a9->B:49:0x00a9 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009b A[LOOP:1: B:36:0x006f->B:47:0x009b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long parseDuration(java.lang.String r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 745
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.DurationKt.parseDuration(java.lang.String, boolean):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final long parseOverLongIsoComponent(java.lang.String r9) {
        /*
            int r0 = r9.length()
            r1 = 0
            r2 = 2
            r3 = 1
            r4 = 0
            if (r0 <= 0) goto L18
            char r5 = r9.charAt(r4)
            java.lang.String r6 = "+-"
            boolean r5 = kotlin.text.StringsKt.contains$default(r6, r5, r4, r2, r1)
            if (r5 == 0) goto L18
            r5 = r3
            goto L19
        L18:
            r5 = r4
        L19:
            int r0 = r0 - r5
            r6 = 16
            if (r0 <= r6) goto L6e
            kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
            int r6 = kotlin.text.StringsKt.getLastIndex(r9)
            r0.<init>(r5, r6)
            boolean r5 = r0 instanceof java.util.Collection
            if (r5 == 0) goto L36
            r5 = r0
            java.util.Collection r5 = (java.util.Collection) r5
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L36
        L34:
            r0 = r3
            goto L5b
        L36:
            java.util.Iterator r0 = r0.iterator()
        L3a:
            boolean r5 = r0.hasNext()
            if (r5 == 0) goto L34
            r5 = r0
            kotlin.collections.IntIterator r5 = (kotlin.collections.IntIterator) r5
            int r5 = r5.nextInt()
            kotlin.ranges.CharRange r6 = new kotlin.ranges.CharRange
            r7 = 48
            r8 = 57
            r6.<init>(r7, r8)
            char r5 = r9.charAt(r5)
            boolean r5 = r6.contains(r5)
            if (r5 != 0) goto L3a
            r0 = r4
        L5b:
            if (r0 == 0) goto L6e
            char r9 = r9.charAt(r4)
            r0 = 45
            if (r9 != r0) goto L68
            r0 = -9223372036854775808
            goto L6d
        L68:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        L6d:
            return r0
        L6e:
            java.lang.String r0 = "+"
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r9, r0, r4, r2, r1)
            if (r0 == 0) goto L7a
            java.lang.String r9 = kotlin.text.StringsKt.drop(r9, r3)
        L7a:
            long r0 = java.lang.Long.parseLong(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.DurationKt.parseOverLongIsoComponent(java.lang.String):long");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long nanosToMillis(long j) {
        return j / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanos(long j) {
        return Duration.m2065constructorimpl(j << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillis(long j) {
        return Duration.m2065constructorimpl((j << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOf(long j, int i) {
        return Duration.m2065constructorimpl((j << 1) + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanosNormalized(long j) {
        if (new LongRange(-4611686018426999999L, 4611686018426999999L).contains(j)) {
            return durationOfNanos(j);
        }
        return durationOfMillis(nanosToMillis(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillisNormalized(long j) {
        long coerceIn;
        if (new LongRange(-4611686018426L, 4611686018426L).contains(j)) {
            return durationOfNanos(millisToNanos(j));
        }
        coerceIn = RangesKt___RangesKt.coerceIn(j, -4611686018427387903L, 4611686018427387903L);
        return durationOfMillis(coerceIn);
    }
}
