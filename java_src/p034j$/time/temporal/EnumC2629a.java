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
public final class EnumC2629a implements InterfaceC2638j {
    public static final EnumC2629a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2629a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2629a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2629a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2629a AMPM_OF_DAY;
    public static final EnumC2629a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2629a CLOCK_HOUR_OF_DAY;
    public static final EnumC2629a DAY_OF_MONTH;
    public static final EnumC2629a DAY_OF_WEEK;
    public static final EnumC2629a DAY_OF_YEAR;
    public static final EnumC2629a EPOCH_DAY;
    public static final EnumC2629a ERA;
    public static final EnumC2629a HOUR_OF_AMPM;
    public static final EnumC2629a HOUR_OF_DAY;
    public static final EnumC2629a INSTANT_SECONDS;
    public static final EnumC2629a MICRO_OF_DAY;
    public static final EnumC2629a MICRO_OF_SECOND;
    public static final EnumC2629a MILLI_OF_DAY;
    public static final EnumC2629a MILLI_OF_SECOND;
    public static final EnumC2629a MINUTE_OF_DAY;
    public static final EnumC2629a MINUTE_OF_HOUR;
    public static final EnumC2629a MONTH_OF_YEAR;
    public static final EnumC2629a NANO_OF_DAY;
    public static final EnumC2629a NANO_OF_SECOND;
    public static final EnumC2629a OFFSET_SECONDS;
    public static final EnumC2629a PROLEPTIC_MONTH;
    public static final EnumC2629a SECOND_OF_DAY;
    public static final EnumC2629a SECOND_OF_MINUTE;
    public static final EnumC2629a YEAR;
    public static final EnumC2629a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2629a[] f525c;

    /* renamed from: a */
    private final String f526a;

    /* renamed from: b */
    private final C2641m f527b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2629a enumC2629a = new EnumC2629a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2641m.m637c(0L, 999999999L));
        NANO_OF_SECOND = enumC2629a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2629a enumC2629a2 = new EnumC2629a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2641m.m637c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2629a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2629a enumC2629a3 = new EnumC2629a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2641m.m637c(0L, 999999L));
        MICRO_OF_SECOND = enumC2629a3;
        EnumC2629a enumC2629a4 = new EnumC2629a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2641m.m637c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2629a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2629a enumC2629a5 = new EnumC2629a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2641m.m637c(0L, 999L));
        MILLI_OF_SECOND = enumC2629a5;
        EnumC2629a enumC2629a6 = new EnumC2629a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2641m.m637c(0L, 86399999L));
        MILLI_OF_DAY = enumC2629a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2629a enumC2629a7 = new EnumC2629a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2641m.m637c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2629a7;
        EnumC2629a enumC2629a8 = new EnumC2629a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2641m.m637c(0L, 86399L));
        SECOND_OF_DAY = enumC2629a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2629a enumC2629a9 = new EnumC2629a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2641m.m637c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2629a9;
        EnumC2629a enumC2629a10 = new EnumC2629a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2641m.m637c(0L, 1439L));
        MINUTE_OF_DAY = enumC2629a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2629a enumC2629a11 = new EnumC2629a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2641m.m637c(0L, 11L));
        HOUR_OF_AMPM = enumC2629a11;
        EnumC2629a enumC2629a12 = new EnumC2629a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2641m.m637c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2629a12;
        EnumC2629a enumC2629a13 = new EnumC2629a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2641m.m637c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2629a13;
        EnumC2629a enumC2629a14 = new EnumC2629a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2641m.m637c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2629a14;
        EnumC2629a enumC2629a15 = new EnumC2629a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2641m.m637c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2629a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2629a enumC2629a16 = new EnumC2629a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2641m.m637c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2629a16;
        EnumC2629a enumC2629a17 = new EnumC2629a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2641m.m637c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2629a17;
        EnumC2629a enumC2629a18 = new EnumC2629a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2641m.m637c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2629a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2629a enumC2629a19 = new EnumC2629a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2641m.m636d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2629a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2629a enumC2629a20 = new EnumC2629a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2641m.m636d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2629a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2629a enumC2629a21 = new EnumC2629a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2641m.m637c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2629a21;
        EnumC2629a enumC2629a22 = new EnumC2629a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2641m.m636d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2629a22;
        EnumC2629a enumC2629a23 = new EnumC2629a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2641m.m637c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2629a23;
        EnumC2629a enumC2629a24 = new EnumC2629a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2641m.m637c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2629a24;
        EnumC2629a enumC2629a25 = new EnumC2629a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2641m.m637c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2629a25;
        EnumC2629a enumC2629a26 = new EnumC2629a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2641m.m636d(1L, 999999999L, C0475C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2629a26;
        EnumC2629a enumC2629a27 = new EnumC2629a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2641m.m637c(-999999999L, 999999999L), "year");
        YEAR = enumC2629a27;
        EnumC2629a enumC2629a28 = new EnumC2629a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2641m.m637c(0L, 1L), "era");
        ERA = enumC2629a28;
        EnumC2629a enumC2629a29 = new EnumC2629a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2641m.m637c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2629a29;
        EnumC2629a enumC2629a30 = new EnumC2629a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2641m.m637c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2629a30;
        f525c = new EnumC2629a[]{enumC2629a, enumC2629a2, enumC2629a3, enumC2629a4, enumC2629a5, enumC2629a6, enumC2629a7, enumC2629a8, enumC2629a9, enumC2629a10, enumC2629a11, enumC2629a12, enumC2629a13, enumC2629a14, enumC2629a15, enumC2629a16, enumC2629a17, enumC2629a18, enumC2629a19, enumC2629a20, enumC2629a21, enumC2629a22, enumC2629a23, enumC2629a24, enumC2629a25, enumC2629a26, enumC2629a27, enumC2629a28, enumC2629a29, enumC2629a30};
    }

    private EnumC2629a(String str, int i, String str2, InterfaceC2640l interfaceC2640l, InterfaceC2640l interfaceC2640l2, C2641m c2641m) {
        this.f526a = str2;
        this.f527b = c2641m;
    }

    private EnumC2629a(String str, int i, String str2, InterfaceC2640l interfaceC2640l, InterfaceC2640l interfaceC2640l2, C2641m c2641m, String str3) {
        this.f526a = str2;
        this.f527b = c2641m;
    }

    public static EnumC2629a valueOf(String str) {
        return (EnumC2629a) Enum.valueOf(EnumC2629a.class, str);
    }

    public static EnumC2629a[] values() {
        return (EnumC2629a[]) f525c.clone();
    }

    @Override // p034j$.time.temporal.InterfaceC2638j
    /* renamed from: a */
    public C2641m mo640a() {
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
