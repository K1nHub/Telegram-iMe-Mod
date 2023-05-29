package p034j$.time.temporal;

import com.google.android.exoplayer2.C0475C;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum NANO_OF_SECOND uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: j$.time.temporal.a */
/* loaded from: classes2.dex */
public final class EnumC2634a implements InterfaceC2643j {
    public static final EnumC2634a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2634a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2634a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2634a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2634a AMPM_OF_DAY;
    public static final EnumC2634a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2634a CLOCK_HOUR_OF_DAY;
    public static final EnumC2634a DAY_OF_MONTH;
    public static final EnumC2634a DAY_OF_WEEK;
    public static final EnumC2634a DAY_OF_YEAR;
    public static final EnumC2634a EPOCH_DAY;
    public static final EnumC2634a ERA;
    public static final EnumC2634a HOUR_OF_AMPM;
    public static final EnumC2634a HOUR_OF_DAY;
    public static final EnumC2634a INSTANT_SECONDS;
    public static final EnumC2634a MICRO_OF_DAY;
    public static final EnumC2634a MICRO_OF_SECOND;
    public static final EnumC2634a MILLI_OF_DAY;
    public static final EnumC2634a MILLI_OF_SECOND;
    public static final EnumC2634a MINUTE_OF_DAY;
    public static final EnumC2634a MINUTE_OF_HOUR;
    public static final EnumC2634a MONTH_OF_YEAR;
    public static final EnumC2634a NANO_OF_DAY;
    public static final EnumC2634a NANO_OF_SECOND;
    public static final EnumC2634a OFFSET_SECONDS;
    public static final EnumC2634a PROLEPTIC_MONTH;
    public static final EnumC2634a SECOND_OF_DAY;
    public static final EnumC2634a SECOND_OF_MINUTE;
    public static final EnumC2634a YEAR;
    public static final EnumC2634a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2634a[] f525c;

    /* renamed from: a */
    private final String f526a;

    /* renamed from: b */
    private final C2646m f527b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2634a enumC2634a = new EnumC2634a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2646m.m637c(0L, 999999999L));
        NANO_OF_SECOND = enumC2634a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2634a enumC2634a2 = new EnumC2634a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2646m.m637c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2634a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2634a enumC2634a3 = new EnumC2634a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2646m.m637c(0L, 999999L));
        MICRO_OF_SECOND = enumC2634a3;
        EnumC2634a enumC2634a4 = new EnumC2634a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2646m.m637c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2634a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2634a enumC2634a5 = new EnumC2634a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2646m.m637c(0L, 999L));
        MILLI_OF_SECOND = enumC2634a5;
        EnumC2634a enumC2634a6 = new EnumC2634a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2646m.m637c(0L, 86399999L));
        MILLI_OF_DAY = enumC2634a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2634a enumC2634a7 = new EnumC2634a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2646m.m637c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2634a7;
        EnumC2634a enumC2634a8 = new EnumC2634a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2646m.m637c(0L, 86399L));
        SECOND_OF_DAY = enumC2634a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2634a enumC2634a9 = new EnumC2634a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2646m.m637c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2634a9;
        EnumC2634a enumC2634a10 = new EnumC2634a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2646m.m637c(0L, 1439L));
        MINUTE_OF_DAY = enumC2634a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2634a enumC2634a11 = new EnumC2634a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2646m.m637c(0L, 11L));
        HOUR_OF_AMPM = enumC2634a11;
        EnumC2634a enumC2634a12 = new EnumC2634a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2646m.m637c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2634a12;
        EnumC2634a enumC2634a13 = new EnumC2634a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2646m.m637c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2634a13;
        EnumC2634a enumC2634a14 = new EnumC2634a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2646m.m637c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2634a14;
        EnumC2634a enumC2634a15 = new EnumC2634a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2646m.m637c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2634a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2634a enumC2634a16 = new EnumC2634a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2646m.m637c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2634a16;
        EnumC2634a enumC2634a17 = new EnumC2634a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2646m.m637c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2634a17;
        EnumC2634a enumC2634a18 = new EnumC2634a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2646m.m637c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2634a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2634a enumC2634a19 = new EnumC2634a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2646m.m636d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2634a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2634a enumC2634a20 = new EnumC2634a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2646m.m636d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2634a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2634a enumC2634a21 = new EnumC2634a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2646m.m637c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2634a21;
        EnumC2634a enumC2634a22 = new EnumC2634a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2646m.m636d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2634a22;
        EnumC2634a enumC2634a23 = new EnumC2634a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2646m.m637c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2634a23;
        EnumC2634a enumC2634a24 = new EnumC2634a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2646m.m637c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2634a24;
        EnumC2634a enumC2634a25 = new EnumC2634a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2646m.m637c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2634a25;
        EnumC2634a enumC2634a26 = new EnumC2634a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2646m.m636d(1L, 999999999L, C0475C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2634a26;
        EnumC2634a enumC2634a27 = new EnumC2634a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2646m.m637c(-999999999L, 999999999L), "year");
        YEAR = enumC2634a27;
        EnumC2634a enumC2634a28 = new EnumC2634a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2646m.m637c(0L, 1L), "era");
        ERA = enumC2634a28;
        EnumC2634a enumC2634a29 = new EnumC2634a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2646m.m637c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2634a29;
        EnumC2634a enumC2634a30 = new EnumC2634a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2646m.m637c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2634a30;
        f525c = new EnumC2634a[]{enumC2634a, enumC2634a2, enumC2634a3, enumC2634a4, enumC2634a5, enumC2634a6, enumC2634a7, enumC2634a8, enumC2634a9, enumC2634a10, enumC2634a11, enumC2634a12, enumC2634a13, enumC2634a14, enumC2634a15, enumC2634a16, enumC2634a17, enumC2634a18, enumC2634a19, enumC2634a20, enumC2634a21, enumC2634a22, enumC2634a23, enumC2634a24, enumC2634a25, enumC2634a26, enumC2634a27, enumC2634a28, enumC2634a29, enumC2634a30};
    }

    private EnumC2634a(String str, int i, String str2, InterfaceC2645l interfaceC2645l, InterfaceC2645l interfaceC2645l2, C2646m c2646m) {
        this.f526a = str2;
        this.f527b = c2646m;
    }

    private EnumC2634a(String str, int i, String str2, InterfaceC2645l interfaceC2645l, InterfaceC2645l interfaceC2645l2, C2646m c2646m, String str3) {
        this.f526a = str2;
        this.f527b = c2646m;
    }

    public static EnumC2634a valueOf(String str) {
        return (EnumC2634a) Enum.valueOf(EnumC2634a.class, str);
    }

    public static EnumC2634a[] values() {
        return (EnumC2634a[]) f525c.clone();
    }

    @Override // p034j$.time.temporal.InterfaceC2643j
    /* renamed from: a */
    public C2646m mo640a() {
        return this.f527b;
    }

    /* renamed from: b */
    public long m641b(long j) {
        this.f527b.m639a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f526a;
    }
}
