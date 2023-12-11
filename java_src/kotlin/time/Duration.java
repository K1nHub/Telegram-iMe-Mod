package kotlin.time;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: Duration.kt */
/* loaded from: classes4.dex */
public final class Duration implements Comparable<Duration> {
    private static final long INFINITE;
    private static final long NEG_INFINITE;
    private final long rawValue;
    public static final Companion Companion = new Companion(null);
    private static final long ZERO = m2065constructorimpl(0);

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Duration m2063boximpl(long j) {
        return new Duration(j);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2066equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).m2092unboximpl();
    }

    /* renamed from: getValue-impl  reason: not valid java name */
    private static final long m2078getValueimpl(long j) {
        return j >> 1;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2079hashCodeimpl(long j) {
        return ProfileData$$ExternalSyntheticBackport0.m1018m(j);
    }

    /* renamed from: isInMillis-impl  reason: not valid java name */
    private static final boolean m2081isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    /* renamed from: isInNanos-impl  reason: not valid java name */
    private static final boolean m2082isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    /* renamed from: isNegative-impl  reason: not valid java name */
    public static final boolean m2084isNegativeimpl(long j) {
        return j < 0;
    }

    /* renamed from: isPositive-impl  reason: not valid java name */
    public static final boolean m2085isPositiveimpl(long j) {
        return j > 0;
    }

    public boolean equals(Object obj) {
        return m2066equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m2079hashCodeimpl(this.rawValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m2092unboximpl() {
        return this.rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m2091compareToLRDsOJo(duration.m2092unboximpl());
    }

    private /* synthetic */ Duration(long j) {
        this.rawValue = j;
    }

    /* renamed from: getStorageUnit-impl  reason: not valid java name */
    private static final DurationUnit m2077getStorageUnitimpl(long j) {
        return m2082isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m2065constructorimpl(long j) {
        if (DurationJvmKt.getDurationAssertionsEnabled()) {
            if (m2082isInNanosimpl(j)) {
                if (!new LongRange(-4611686018426999999L, 4611686018426999999L).contains(m2078getValueimpl(j))) {
                    throw new AssertionError(m2078getValueimpl(j) + " ns is out of nanoseconds range");
                }
            } else if (!new LongRange(-4611686018427387903L, 4611686018427387903L).contains(m2078getValueimpl(j))) {
                throw new AssertionError(m2078getValueimpl(j) + " ms is out of milliseconds range");
            } else if (new LongRange(-4611686018426L, 4611686018426L).contains(m2078getValueimpl(j))) {
                throw new AssertionError(m2078getValueimpl(j) + " ms is denormalized");
            }
        }
        return j;
    }

    /* compiled from: Duration.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZERO-UwyO8pc  reason: not valid java name */
        public final long m2094getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* renamed from: getINFINITE-UwyO8pc  reason: not valid java name */
        public final long m2093getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: parseIsoString-UwyO8pc  reason: not valid java name */
        public final long m2095parseIsoStringUwyO8pc(String value) {
            long parseDuration;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                parseDuration = DurationKt.parseDuration(value, true);
                return parseDuration;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }
    }

    static {
        long durationOfMillis;
        long durationOfMillis2;
        durationOfMillis = DurationKt.durationOfMillis(4611686018427387903L);
        INFINITE = durationOfMillis;
        durationOfMillis2 = DurationKt.durationOfMillis(-4611686018427387903L);
        NEG_INFINITE = durationOfMillis2;
    }

    /* renamed from: unaryMinus-UwyO8pc  reason: not valid java name */
    public static final long m2090unaryMinusUwyO8pc(long j) {
        long durationOf;
        durationOf = DurationKt.durationOf(-m2078getValueimpl(j), ((int) j) & 1);
        return durationOf;
    }

    /* renamed from: plus-LRDsOJo  reason: not valid java name */
    public static final long m2086plusLRDsOJo(long j, long j2) {
        long durationOfMillisNormalized;
        long durationOfNanosNormalized;
        if (m2083isInfiniteimpl(j)) {
            if (m2080isFiniteimpl(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        } else if (m2083isInfiniteimpl(j2)) {
            return j2;
        } else {
            if ((((int) j) & 1) == (((int) j2) & 1)) {
                long m2078getValueimpl = m2078getValueimpl(j) + m2078getValueimpl(j2);
                if (m2082isInNanosimpl(j)) {
                    durationOfNanosNormalized = DurationKt.durationOfNanosNormalized(m2078getValueimpl);
                    return durationOfNanosNormalized;
                }
                durationOfMillisNormalized = DurationKt.durationOfMillisNormalized(m2078getValueimpl);
                return durationOfMillisNormalized;
            } else if (m2081isInMillisimpl(j)) {
                return m2061addValuesMixedRangesUwyO8pc(j, m2078getValueimpl(j), m2078getValueimpl(j2));
            } else {
                return m2061addValuesMixedRangesUwyO8pc(j, m2078getValueimpl(j2), m2078getValueimpl(j));
            }
        }
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc  reason: not valid java name */
    private static final long m2061addValuesMixedRangesUwyO8pc(long j, long j2, long j3) {
        long nanosToMillis;
        long coerceIn;
        long durationOfMillis;
        long millisToNanos;
        long millisToNanos2;
        long durationOfNanos;
        nanosToMillis = DurationKt.nanosToMillis(j3);
        long j4 = j2 + nanosToMillis;
        if (new LongRange(-4611686018426L, 4611686018426L).contains(j4)) {
            millisToNanos = DurationKt.millisToNanos(nanosToMillis);
            long j5 = j3 - millisToNanos;
            millisToNanos2 = DurationKt.millisToNanos(j4);
            durationOfNanos = DurationKt.durationOfNanos(millisToNanos2 + j5);
            return durationOfNanos;
        }
        coerceIn = RangesKt___RangesKt.coerceIn(j4, -4611686018427387903L, 4611686018427387903L);
        durationOfMillis = DurationKt.durationOfMillis(coerceIn);
        return durationOfMillis;
    }

    /* renamed from: isInfinite-impl  reason: not valid java name */
    public static final boolean m2083isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* renamed from: isFinite-impl  reason: not valid java name */
    public static final boolean m2080isFiniteimpl(long j) {
        return !m2083isInfiniteimpl(j);
    }

    /* renamed from: getAbsoluteValue-UwyO8pc  reason: not valid java name */
    public static final long m2067getAbsoluteValueUwyO8pc(long j) {
        return m2084isNegativeimpl(j) ? m2090unaryMinusUwyO8pc(j) : j;
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public int m2091compareToLRDsOJo(long j) {
        return m2064compareToLRDsOJo(this.rawValue, j);
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public static int m2064compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m2084isNegativeimpl(j) ? -i : i;
    }

    /* renamed from: getHoursComponent-impl  reason: not valid java name */
    public static final int m2068getHoursComponentimpl(long j) {
        if (m2083isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2070getInWholeHoursimpl(j) % 24);
    }

    /* renamed from: getMinutesComponent-impl  reason: not valid java name */
    public static final int m2074getMinutesComponentimpl(long j) {
        if (m2083isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2072getInWholeMinutesimpl(j) % 60);
    }

    /* renamed from: getSecondsComponent-impl  reason: not valid java name */
    public static final int m2076getSecondsComponentimpl(long j) {
        if (m2083isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2073getInWholeSecondsimpl(j) % 60);
    }

    /* renamed from: getNanosecondsComponent-impl  reason: not valid java name */
    public static final int m2075getNanosecondsComponentimpl(long j) {
        long m2078getValueimpl;
        if (m2083isInfiniteimpl(j)) {
            return 0;
        }
        if (m2081isInMillisimpl(j)) {
            m2078getValueimpl = DurationKt.millisToNanos(m2078getValueimpl(j) % 1000);
        } else {
            m2078getValueimpl = m2078getValueimpl(j) % 1000000000;
        }
        return (int) m2078getValueimpl;
    }

    /* renamed from: toLong-impl  reason: not valid java name */
    public static final long m2088toLongimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m2078getValueimpl(j), m2077getStorageUnitimpl(j), unit);
    }

    /* renamed from: getInWholeDays-impl  reason: not valid java name */
    public static final long m2069getInWholeDaysimpl(long j) {
        return m2088toLongimpl(j, DurationUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl  reason: not valid java name */
    public static final long m2070getInWholeHoursimpl(long j) {
        return m2088toLongimpl(j, DurationUnit.HOURS);
    }

    /* renamed from: getInWholeMinutes-impl  reason: not valid java name */
    public static final long m2072getInWholeMinutesimpl(long j) {
        return m2088toLongimpl(j, DurationUnit.MINUTES);
    }

    /* renamed from: getInWholeSeconds-impl  reason: not valid java name */
    public static final long m2073getInWholeSecondsimpl(long j) {
        return m2088toLongimpl(j, DurationUnit.SECONDS);
    }

    /* renamed from: getInWholeMilliseconds-impl  reason: not valid java name */
    public static final long m2071getInWholeMillisecondsimpl(long j) {
        return (m2081isInMillisimpl(j) && m2080isFiniteimpl(j)) ? m2078getValueimpl(j) : m2088toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    public String toString() {
        return m2089toStringimpl(this.rawValue);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2089toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean m2084isNegativeimpl = m2084isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (m2084isNegativeimpl) {
            sb.append('-');
        }
        long m2067getAbsoluteValueUwyO8pc = m2067getAbsoluteValueUwyO8pc(j);
        long m2069getInWholeDaysimpl = m2069getInWholeDaysimpl(m2067getAbsoluteValueUwyO8pc);
        int m2068getHoursComponentimpl = m2068getHoursComponentimpl(m2067getAbsoluteValueUwyO8pc);
        int m2074getMinutesComponentimpl = m2074getMinutesComponentimpl(m2067getAbsoluteValueUwyO8pc);
        int m2076getSecondsComponentimpl = m2076getSecondsComponentimpl(m2067getAbsoluteValueUwyO8pc);
        int m2075getNanosecondsComponentimpl = m2075getNanosecondsComponentimpl(m2067getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = m2069getInWholeDaysimpl != 0;
        boolean z2 = m2068getHoursComponentimpl != 0;
        boolean z3 = m2074getMinutesComponentimpl != 0;
        boolean z4 = (m2076getSecondsComponentimpl == 0 && m2075getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(m2069getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m2068getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m2074getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (m2076getSecondsComponentimpl != 0 || z || z2 || z3) {
                m2062appendFractionalimpl(j, sb, m2076getSecondsComponentimpl, m2075getNanosecondsComponentimpl, 9, "s", false);
            } else if (m2075getNanosecondsComponentimpl >= 1000000) {
                m2062appendFractionalimpl(j, sb, m2075getNanosecondsComponentimpl / 1000000, m2075getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (m2075getNanosecondsComponentimpl >= 1000) {
                m2062appendFractionalimpl(j, sb, m2075getNanosecondsComponentimpl / 1000, m2075getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(m2075getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (m2084isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: appendFractional-impl  reason: not valid java name */
    private static final void m2062appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        String padStart;
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            padStart = StringsKt__StringsKt.padStart(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = padStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (padStart.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (!z && i6 < 3) {
                sb.append((CharSequence) padStart, 0, i6);
                Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            } else {
                sb.append((CharSequence) padStart, 0, ((i6 + 2) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            }
        }
        sb.append(str);
    }

    /* renamed from: toIsoString-impl  reason: not valid java name */
    public static final String m2087toIsoStringimpl(long j) {
        StringBuilder sb = new StringBuilder();
        if (m2084isNegativeimpl(j)) {
            sb.append('-');
        }
        sb.append("PT");
        long m2067getAbsoluteValueUwyO8pc = m2067getAbsoluteValueUwyO8pc(j);
        long m2070getInWholeHoursimpl = m2070getInWholeHoursimpl(m2067getAbsoluteValueUwyO8pc);
        int m2074getMinutesComponentimpl = m2074getMinutesComponentimpl(m2067getAbsoluteValueUwyO8pc);
        int m2076getSecondsComponentimpl = m2076getSecondsComponentimpl(m2067getAbsoluteValueUwyO8pc);
        int m2075getNanosecondsComponentimpl = m2075getNanosecondsComponentimpl(m2067getAbsoluteValueUwyO8pc);
        if (m2083isInfiniteimpl(j)) {
            m2070getInWholeHoursimpl = 9999999999999L;
        }
        boolean z = true;
        boolean z2 = m2070getInWholeHoursimpl != 0;
        boolean z3 = (m2076getSecondsComponentimpl == 0 && m2075getNanosecondsComponentimpl == 0) ? false : true;
        if (m2074getMinutesComponentimpl == 0 && (!z3 || !z2)) {
            z = false;
        }
        if (z2) {
            sb.append(m2070getInWholeHoursimpl);
            sb.append('H');
        }
        if (z) {
            sb.append(m2074getMinutesComponentimpl);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            m2062appendFractionalimpl(j, sb, m2076getSecondsComponentimpl, m2075getNanosecondsComponentimpl, 9, "S", true);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
