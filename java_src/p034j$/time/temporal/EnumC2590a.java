package p034j$.time.temporal;

import com.google.android.exoplayer2.C0470C;
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
public final class EnumC2590a implements InterfaceC2599j {
    public static final EnumC2590a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2590a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2590a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2590a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2590a AMPM_OF_DAY;
    public static final EnumC2590a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2590a CLOCK_HOUR_OF_DAY;
    public static final EnumC2590a DAY_OF_MONTH;
    public static final EnumC2590a DAY_OF_WEEK;
    public static final EnumC2590a DAY_OF_YEAR;
    public static final EnumC2590a EPOCH_DAY;
    public static final EnumC2590a ERA;
    public static final EnumC2590a HOUR_OF_AMPM;
    public static final EnumC2590a HOUR_OF_DAY;
    public static final EnumC2590a INSTANT_SECONDS;
    public static final EnumC2590a MICRO_OF_DAY;
    public static final EnumC2590a MICRO_OF_SECOND;
    public static final EnumC2590a MILLI_OF_DAY;
    public static final EnumC2590a MILLI_OF_SECOND;
    public static final EnumC2590a MINUTE_OF_DAY;
    public static final EnumC2590a MINUTE_OF_HOUR;
    public static final EnumC2590a MONTH_OF_YEAR;
    public static final EnumC2590a NANO_OF_DAY;
    public static final EnumC2590a NANO_OF_SECOND;
    public static final EnumC2590a OFFSET_SECONDS;
    public static final EnumC2590a PROLEPTIC_MONTH;
    public static final EnumC2590a SECOND_OF_DAY;
    public static final EnumC2590a SECOND_OF_MINUTE;
    public static final EnumC2590a YEAR;
    public static final EnumC2590a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2590a[] f522c;

    /* renamed from: a */
    private final String f523a;

    /* renamed from: b */
    private final C2602m f524b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2590a enumC2590a = new EnumC2590a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2602m.m632c(0L, 999999999L));
        NANO_OF_SECOND = enumC2590a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2590a enumC2590a2 = new EnumC2590a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2602m.m632c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2590a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2590a enumC2590a3 = new EnumC2590a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2602m.m632c(0L, 999999L));
        MICRO_OF_SECOND = enumC2590a3;
        EnumC2590a enumC2590a4 = new EnumC2590a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2602m.m632c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2590a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2590a enumC2590a5 = new EnumC2590a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2602m.m632c(0L, 999L));
        MILLI_OF_SECOND = enumC2590a5;
        EnumC2590a enumC2590a6 = new EnumC2590a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2602m.m632c(0L, 86399999L));
        MILLI_OF_DAY = enumC2590a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2590a enumC2590a7 = new EnumC2590a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2602m.m632c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2590a7;
        EnumC2590a enumC2590a8 = new EnumC2590a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2602m.m632c(0L, 86399L));
        SECOND_OF_DAY = enumC2590a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2590a enumC2590a9 = new EnumC2590a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2602m.m632c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2590a9;
        EnumC2590a enumC2590a10 = new EnumC2590a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2602m.m632c(0L, 1439L));
        MINUTE_OF_DAY = enumC2590a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2590a enumC2590a11 = new EnumC2590a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2602m.m632c(0L, 11L));
        HOUR_OF_AMPM = enumC2590a11;
        EnumC2590a enumC2590a12 = new EnumC2590a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2602m.m632c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2590a12;
        EnumC2590a enumC2590a13 = new EnumC2590a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2602m.m632c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2590a13;
        EnumC2590a enumC2590a14 = new EnumC2590a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2602m.m632c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2590a14;
        EnumC2590a enumC2590a15 = new EnumC2590a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2602m.m632c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2590a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2590a enumC2590a16 = new EnumC2590a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2602m.m632c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2590a16;
        EnumC2590a enumC2590a17 = new EnumC2590a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2602m.m632c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2590a17;
        EnumC2590a enumC2590a18 = new EnumC2590a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2602m.m632c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2590a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2590a enumC2590a19 = new EnumC2590a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2602m.m631d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2590a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2590a enumC2590a20 = new EnumC2590a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2602m.m631d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2590a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2590a enumC2590a21 = new EnumC2590a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2602m.m632c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2590a21;
        EnumC2590a enumC2590a22 = new EnumC2590a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2602m.m631d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2590a22;
        EnumC2590a enumC2590a23 = new EnumC2590a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2602m.m632c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2590a23;
        EnumC2590a enumC2590a24 = new EnumC2590a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2602m.m632c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2590a24;
        EnumC2590a enumC2590a25 = new EnumC2590a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2602m.m632c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2590a25;
        EnumC2590a enumC2590a26 = new EnumC2590a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2602m.m631d(1L, 999999999L, C0470C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2590a26;
        EnumC2590a enumC2590a27 = new EnumC2590a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2602m.m632c(-999999999L, 999999999L), "year");
        YEAR = enumC2590a27;
        EnumC2590a enumC2590a28 = new EnumC2590a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2602m.m632c(0L, 1L), "era");
        ERA = enumC2590a28;
        EnumC2590a enumC2590a29 = new EnumC2590a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2602m.m632c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2590a29;
        EnumC2590a enumC2590a30 = new EnumC2590a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2602m.m632c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2590a30;
        f522c = new EnumC2590a[]{enumC2590a, enumC2590a2, enumC2590a3, enumC2590a4, enumC2590a5, enumC2590a6, enumC2590a7, enumC2590a8, enumC2590a9, enumC2590a10, enumC2590a11, enumC2590a12, enumC2590a13, enumC2590a14, enumC2590a15, enumC2590a16, enumC2590a17, enumC2590a18, enumC2590a19, enumC2590a20, enumC2590a21, enumC2590a22, enumC2590a23, enumC2590a24, enumC2590a25, enumC2590a26, enumC2590a27, enumC2590a28, enumC2590a29, enumC2590a30};
    }

    private EnumC2590a(String str, int i, String str2, InterfaceC2601l interfaceC2601l, InterfaceC2601l interfaceC2601l2, C2602m c2602m) {
        this.f523a = str2;
        this.f524b = c2602m;
    }

    private EnumC2590a(String str, int i, String str2, InterfaceC2601l interfaceC2601l, InterfaceC2601l interfaceC2601l2, C2602m c2602m, String str3) {
        this.f523a = str2;
        this.f524b = c2602m;
    }

    public static EnumC2590a valueOf(String str) {
        return (EnumC2590a) Enum.valueOf(EnumC2590a.class, str);
    }

    public static EnumC2590a[] values() {
        return (EnumC2590a[]) f522c.clone();
    }

    @Override // p034j$.time.temporal.InterfaceC2599j
    /* renamed from: a */
    public C2602m mo635a() {
        return this.f524b;
    }

    /* renamed from: b */
    public long m636b(long j) {
        this.f524b.m634a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f523a;
    }
}
