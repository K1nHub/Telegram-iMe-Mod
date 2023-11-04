package kotlinx.datetime;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.datetime.serializers.InstantIso8601Serializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import p033j$.time.Clock;
import p033j$.time.DateTimeException;
import p033j$.time.OffsetDateTime;
import p033j$.time.format.DateTimeParseException;
/* compiled from: Instant.kt */
@Serializable(with = InstantIso8601Serializer.class)
/* loaded from: classes4.dex */
public final class Instant implements Comparable<Instant> {
    public static final Companion Companion = new Companion(null);
    private static final Instant DISTANT_PAST;
    private static final Instant MAX;
    private static final Instant MIN;
    private final p033j$.time.Instant value;

    public Instant(p033j$.time.Instant value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
    }

    public final long getEpochSeconds() {
        return this.value.getEpochSecond();
    }

    /* renamed from: minus-LRDsOJo  reason: not valid java name */
    public final Instant m2125minusLRDsOJo(long j) {
        return m2126plusLRDsOJo(Duration.m2088unaryMinusUwyO8pc(j));
    }

    /* renamed from: minus-5sfh64U  reason: not valid java name */
    public final long m2124minus5sfh64U(Instant other) {
        Intrinsics.checkNotNullParameter(other, "other");
        Duration.Companion companion = Duration.Companion;
        return Duration.m2084plusLRDsOJo(DurationKt.toDuration(this.value.getEpochSecond() - other.value.getEpochSecond(), DurationUnit.SECONDS), DurationKt.toDuration(this.value.getNano() - other.value.getNano(), DurationUnit.NANOSECONDS));
    }

    @Override // java.lang.Comparable
    public int compareTo(Instant other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.value.compareTo(other.value);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof Instant) && Intrinsics.areEqual(this.value, ((Instant) obj).value));
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    public String toString() {
        String instant = this.value.toString();
        Intrinsics.checkNotNullExpressionValue(instant, "value.toString()");
        return instant;
    }

    /* compiled from: Instant.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Instant> serializer() {
            return InstantIso8601Serializer.INSTANCE;
        }

        public final Instant now() {
            p033j$.time.Instant instant = Clock.systemUTC().instant();
            Intrinsics.checkNotNullExpressionValue(instant, "systemUTC().instant()");
            return new Instant(instant);
        }

        public final Instant parse(String isoString) {
            Intrinsics.checkNotNullParameter(isoString, "isoString");
            try {
                p033j$.time.Instant instant = OffsetDateTime.parse(fixOffsetRepresentation(isoString)).toInstant();
                Intrinsics.checkNotNullExpressionValue(instant, "parse(fixOffsetRepresent…n(isoString)).toInstant()");
                return new Instant(instant);
            } catch (DateTimeParseException e) {
                throw new DateTimeFormatException(e);
            }
        }

        private final String fixOffsetRepresentation(String str) {
            int indexOf$default;
            int i;
            int indexOf$default2;
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, 'T', 0, true, 2, (Object) null);
            if (indexOf$default == -1) {
                return str;
            }
            int length = str.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i2 = length - 1;
                    char charAt = str.charAt(length);
                    if (charAt == '+' || charAt == '-') {
                        i = length;
                        break;
                    } else if (i2 < 0) {
                        break;
                    } else {
                        length = i2;
                    }
                }
            }
            i = -1;
            if (i < indexOf$default) {
                return str;
            }
            indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, ':', i, false, 4, (Object) null);
            if (indexOf$default2 != -1) {
                return str;
            }
            return str + ":00";
        }

        public static /* synthetic */ Instant fromEpochSeconds$default(Companion companion, long j, long j2, int i, Object obj) {
            if ((i & 2) != 0) {
                j2 = 0;
            }
            return companion.fromEpochSeconds(j, j2);
        }

        public final Instant fromEpochSeconds(long j, long j2) {
            try {
                p033j$.time.Instant ofEpochSecond = p033j$.time.Instant.ofEpochSecond(j, j2);
                Intrinsics.checkNotNullExpressionValue(ofEpochSecond, "ofEpochSecond(epochSeconds, nanosecondAdjustment)");
                return new Instant(ofEpochSecond);
            } catch (Exception e) {
                if ((e instanceof ArithmeticException) || (e instanceof DateTimeException)) {
                    return j > 0 ? getMAX$kotlinx_datetime() : getMIN$kotlinx_datetime();
                }
                throw e;
            }
        }

        public final Instant getDISTANT_PAST() {
            return Instant.DISTANT_PAST;
        }

        public final Instant getMIN$kotlinx_datetime() {
            return Instant.MIN;
        }

        public final Instant getMAX$kotlinx_datetime() {
            return Instant.MAX;
        }
    }

    static {
        p033j$.time.Instant ofEpochSecond = p033j$.time.Instant.ofEpochSecond(-3217862419201L, 999999999L);
        Intrinsics.checkNotNullExpressionValue(ofEpochSecond, "ofEpochSecond(DISTANT_PAST_SECONDS, 999_999_999)");
        DISTANT_PAST = new Instant(ofEpochSecond);
        p033j$.time.Instant ofEpochSecond2 = p033j$.time.Instant.ofEpochSecond(3093527980800L, 0L);
        Intrinsics.checkNotNullExpressionValue(ofEpochSecond2, "ofEpochSecond(DISTANT_FUTURE_SECONDS, 0)");
        new Instant(ofEpochSecond2);
        p033j$.time.Instant MIN2 = p033j$.time.Instant.MIN;
        Intrinsics.checkNotNullExpressionValue(MIN2, "MIN");
        MIN = new Instant(MIN2);
        p033j$.time.Instant MAX2 = p033j$.time.Instant.MAX;
        Intrinsics.checkNotNullExpressionValue(MAX2, "MAX");
        MAX = new Instant(MAX2);
    }

    /* renamed from: plus-LRDsOJo  reason: not valid java name */
    public final Instant m2126plusLRDsOJo(long j) {
        try {
            p033j$.time.Instant plusNanos = this.value.plusSeconds(Duration.m2071getInWholeSecondsimpl(j)).plusNanos(Duration.m2073getNanosecondsComponentimpl(j));
            Intrinsics.checkNotNullExpressionValue(plusNanos, "value.plusSeconds(second…nos(nanoseconds.toLong())");
            return new Instant(plusNanos);
        } catch (Exception e) {
            if ((e instanceof ArithmeticException) || (e instanceof DateTimeException)) {
                return Duration.m2083isPositiveimpl(j) ? MAX : MIN;
            }
            throw e;
        }
    }
}
