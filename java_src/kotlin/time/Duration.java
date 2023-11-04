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
    private static final long ZERO = m2063constructorimpl(0);

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Duration m2061boximpl(long j) {
        return new Duration(j);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2064equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).m2090unboximpl();
    }

    /* renamed from: getValue-impl  reason: not valid java name */
    private static final long m2076getValueimpl(long j) {
        return j >> 1;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2077hashCodeimpl(long j) {
        return ProfileData$$ExternalSyntheticBackport0.m1018m(j);
    }

    /* renamed from: isInMillis-impl  reason: not valid java name */
    private static final boolean m2079isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    /* renamed from: isInNanos-impl  reason: not valid java name */
    private static final boolean m2080isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    /* renamed from: isNegative-impl  reason: not valid java name */
    public static final boolean m2082isNegativeimpl(long j) {
        return j < 0;
    }

    /* renamed from: isPositive-impl  reason: not valid java name */
    public static final boolean m2083isPositiveimpl(long j) {
        return j > 0;
    }

    public boolean equals(Object obj) {
        return m2064equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m2077hashCodeimpl(this.rawValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m2090unboximpl() {
        return this.rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m2089compareToLRDsOJo(duration.m2090unboximpl());
    }

    private /* synthetic */ Duration(long j) {
        this.rawValue = j;
    }

    /* renamed from: getStorageUnit-impl  reason: not valid java name */
    private static final DurationUnit m2075getStorageUnitimpl(long j) {
        return m2080isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m2063constructorimpl(long j) {
        if (DurationJvmKt.getDurationAssertionsEnabled()) {
            if (m2080isInNanosimpl(j)) {
                if (!new LongRange(-4611686018426999999L, 4611686018426999999L).contains(m2076getValueimpl(j))) {
                    throw new AssertionError(m2076getValueimpl(j) + " ns is out of nanoseconds range");
                }
            } else if (!new LongRange(-4611686018427387903L, 4611686018427387903L).contains(m2076getValueimpl(j))) {
                throw new AssertionError(m2076getValueimpl(j) + " ms is out of milliseconds range");
            } else if (new LongRange(-4611686018426L, 4611686018426L).contains(m2076getValueimpl(j))) {
                throw new AssertionError(m2076getValueimpl(j) + " ms is denormalized");
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
        public final long m2092getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* renamed from: getINFINITE-UwyO8pc  reason: not valid java name */
        public final long m2091getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: parseIsoString-UwyO8pc  reason: not valid java name */
        public final long m2093parseIsoStringUwyO8pc(String value) {
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
    public static final long m2088unaryMinusUwyO8pc(long j) {
        long durationOf;
        durationOf = DurationKt.durationOf(-m2076getValueimpl(j), ((int) j) & 1);
        return durationOf;
    }

    /* renamed from: plus-LRDsOJo  reason: not valid java name */
    public static final long m2084plusLRDsOJo(long j, long j2) {
        long durationOfMillisNormalized;
        long durationOfNanosNormalized;
        if (m2081isInfiniteimpl(j)) {
            if (m2078isFiniteimpl(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        } else if (m2081isInfiniteimpl(j2)) {
            return j2;
        } else {
            if ((((int) j) & 1) == (((int) j2) & 1)) {
                long m2076getValueimpl = m2076getValueimpl(j) + m2076getValueimpl(j2);
                if (m2080isInNanosimpl(j)) {
                    durationOfNanosNormalized = DurationKt.durationOfNanosNormalized(m2076getValueimpl);
                    return durationOfNanosNormalized;
                }
                durationOfMillisNormalized = DurationKt.durationOfMillisNormalized(m2076getValueimpl);
                return durationOfMillisNormalized;
            } else if (m2079isInMillisimpl(j)) {
                return m2059addValuesMixedRangesUwyO8pc(j, m2076getValueimpl(j), m2076getValueimpl(j2));
            } else {
                return m2059addValuesMixedRangesUwyO8pc(j, m2076getValueimpl(j2), m2076getValueimpl(j));
            }
        }
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc  reason: not valid java name */
    private static final long m2059addValuesMixedRangesUwyO8pc(long j, long j2, long j3) {
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
    public static final boolean m2081isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* renamed from: isFinite-impl  reason: not valid java name */
    public static final boolean m2078isFiniteimpl(long j) {
        return !m2081isInfiniteimpl(j);
    }

    /* renamed from: getAbsoluteValue-UwyO8pc  reason: not valid java name */
    public static final long m2065getAbsoluteValueUwyO8pc(long j) {
        return m2082isNegativeimpl(j) ? m2088unaryMinusUwyO8pc(j) : j;
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public int m2089compareToLRDsOJo(long j) {
        return m2062compareToLRDsOJo(this.rawValue, j);
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public static int m2062compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m2082isNegativeimpl(j) ? -i : i;
    }

    /* renamed from: getHoursComponent-impl  reason: not valid java name */
    public static final int m2066getHoursComponentimpl(long j) {
        if (m2081isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2068getInWholeHoursimpl(j) % 24);
    }

    /* renamed from: getMinutesComponent-impl  reason: not valid java name */
    public static final int m2072getMinutesComponentimpl(long j) {
        if (m2081isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2070getInWholeMinutesimpl(j) % 60);
    }

    /* renamed from: getSecondsComponent-impl  reason: not valid java name */
    public static final int m2074getSecondsComponentimpl(long j) {
        if (m2081isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2071getInWholeSecondsimpl(j) % 60);
    }

    /* renamed from: getNanosecondsComponent-impl  reason: not valid java name */
    public static final int m2073getNanosecondsComponentimpl(long j) {
        long m2076getValueimpl;
        if (m2081isInfiniteimpl(j)) {
            return 0;
        }
        if (m2079isInMillisimpl(j)) {
            m2076getValueimpl = DurationKt.millisToNanos(m2076getValueimpl(j) % 1000);
        } else {
            m2076getValueimpl = m2076getValueimpl(j) % 1000000000;
        }
        return (int) m2076getValueimpl;
    }

    /* renamed from: toLong-impl  reason: not valid java name */
    public static final long m2086toLongimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m2076getValueimpl(j), m2075getStorageUnitimpl(j), unit);
    }

    /* renamed from: getInWholeDays-impl  reason: not valid java name */
    public static final long m2067getInWholeDaysimpl(long j) {
        return m2086toLongimpl(j, DurationUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl  reason: not valid java name */
    public static final long m2068getInWholeHoursimpl(long j) {
        return m2086toLongimpl(j, DurationUnit.HOURS);
    }

    /* renamed from: getInWholeMinutes-impl  reason: not valid java name */
    public static final long m2070getInWholeMinutesimpl(long j) {
        return m2086toLongimpl(j, DurationUnit.MINUTES);
    }

    /* renamed from: getInWholeSeconds-impl  reason: not valid java name */
    public static final long m2071getInWholeSecondsimpl(long j) {
        return m2086toLongimpl(j, DurationUnit.SECONDS);
    }

    /* renamed from: getInWholeMilliseconds-impl  reason: not valid java name */
    public static final long m2069getInWholeMillisecondsimpl(long j) {
        return (m2079isInMillisimpl(j) && m2078isFiniteimpl(j)) ? m2076getValueimpl(j) : m2086toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    public String toString() {
        return m2087toStringimpl(this.rawValue);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2087toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean m2082isNegativeimpl = m2082isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (m2082isNegativeimpl) {
            sb.append('-');
        }
        long m2065getAbsoluteValueUwyO8pc = m2065getAbsoluteValueUwyO8pc(j);
        long m2067getInWholeDaysimpl = m2067getInWholeDaysimpl(m2065getAbsoluteValueUwyO8pc);
        int m2066getHoursComponentimpl = m2066getHoursComponentimpl(m2065getAbsoluteValueUwyO8pc);
        int m2072getMinutesComponentimpl = m2072getMinutesComponentimpl(m2065getAbsoluteValueUwyO8pc);
        int m2074getSecondsComponentimpl = m2074getSecondsComponentimpl(m2065getAbsoluteValueUwyO8pc);
        int m2073getNanosecondsComponentimpl = m2073getNanosecondsComponentimpl(m2065getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = m2067getInWholeDaysimpl != 0;
        boolean z2 = m2066getHoursComponentimpl != 0;
        boolean z3 = m2072getMinutesComponentimpl != 0;
        boolean z4 = (m2074getSecondsComponentimpl == 0 && m2073getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(m2067getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m2066getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m2072getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (m2074getSecondsComponentimpl != 0 || z || z2 || z3) {
                m2060appendFractionalimpl(j, sb, m2074getSecondsComponentimpl, m2073getNanosecondsComponentimpl, 9, "s", false);
            } else if (m2073getNanosecondsComponentimpl >= 1000000) {
                m2060appendFractionalimpl(j, sb, m2073getNanosecondsComponentimpl / 1000000, m2073getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (m2073getNanosecondsComponentimpl >= 1000) {
                m2060appendFractionalimpl(j, sb, m2073getNanosecondsComponentimpl / 1000, m2073getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(m2073getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (m2082isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: appendFractional-impl  reason: not valid java name */
    private static final void m2060appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
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
    public static final String m2085toIsoStringimpl(long j) {
        StringBuilder sb = new StringBuilder();
        if (m2082isNegativeimpl(j)) {
            sb.append('-');
        }
        sb.append("PT");
        long m2065getAbsoluteValueUwyO8pc = m2065getAbsoluteValueUwyO8pc(j);
        long m2068getInWholeHoursimpl = m2068getInWholeHoursimpl(m2065getAbsoluteValueUwyO8pc);
        int m2072getMinutesComponentimpl = m2072getMinutesComponentimpl(m2065getAbsoluteValueUwyO8pc);
        int m2074getSecondsComponentimpl = m2074getSecondsComponentimpl(m2065getAbsoluteValueUwyO8pc);
        int m2073getNanosecondsComponentimpl = m2073getNanosecondsComponentimpl(m2065getAbsoluteValueUwyO8pc);
        if (m2081isInfiniteimpl(j)) {
            m2068getInWholeHoursimpl = 9999999999999L;
        }
        boolean z = true;
        boolean z2 = m2068getInWholeHoursimpl != 0;
        boolean z3 = (m2074getSecondsComponentimpl == 0 && m2073getNanosecondsComponentimpl == 0) ? false : true;
        if (m2072getMinutesComponentimpl == 0 && (!z3 || !z2)) {
            z = false;
        }
        if (z2) {
            sb.append(m2068getInWholeHoursimpl);
            sb.append('H');
        }
        if (z) {
            sb.append(m2072getMinutesComponentimpl);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            m2060appendFractionalimpl(j, sb, m2074getSecondsComponentimpl, m2073getNanosecondsComponentimpl, 9, "S", true);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
