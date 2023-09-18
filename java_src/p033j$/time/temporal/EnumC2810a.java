package p033j$.time.temporal;

import com.google.android.exoplayer2.C0479C;
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
public final class EnumC2810a implements InterfaceC2819j {
    public static final EnumC2810a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2810a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2810a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2810a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2810a AMPM_OF_DAY;
    public static final EnumC2810a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2810a CLOCK_HOUR_OF_DAY;
    public static final EnumC2810a DAY_OF_MONTH;
    public static final EnumC2810a DAY_OF_WEEK;
    public static final EnumC2810a DAY_OF_YEAR;
    public static final EnumC2810a EPOCH_DAY;
    public static final EnumC2810a ERA;
    public static final EnumC2810a HOUR_OF_AMPM;
    public static final EnumC2810a HOUR_OF_DAY;
    public static final EnumC2810a INSTANT_SECONDS;
    public static final EnumC2810a MICRO_OF_DAY;
    public static final EnumC2810a MICRO_OF_SECOND;
    public static final EnumC2810a MILLI_OF_DAY;
    public static final EnumC2810a MILLI_OF_SECOND;
    public static final EnumC2810a MINUTE_OF_DAY;
    public static final EnumC2810a MINUTE_OF_HOUR;
    public static final EnumC2810a MONTH_OF_YEAR;
    public static final EnumC2810a NANO_OF_DAY;
    public static final EnumC2810a NANO_OF_SECOND;
    public static final EnumC2810a OFFSET_SECONDS;
    public static final EnumC2810a PROLEPTIC_MONTH;
    public static final EnumC2810a SECOND_OF_DAY;
    public static final EnumC2810a SECOND_OF_MINUTE;
    public static final EnumC2810a YEAR;
    public static final EnumC2810a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2810a[] f611c;

    /* renamed from: a */
    private final String f612a;

    /* renamed from: b */
    private final C2822m f613b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2810a enumC2810a = new EnumC2810a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2822m.m655c(0L, 999999999L));
        NANO_OF_SECOND = enumC2810a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2810a enumC2810a2 = new EnumC2810a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2822m.m655c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2810a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2810a enumC2810a3 = new EnumC2810a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2822m.m655c(0L, 999999L));
        MICRO_OF_SECOND = enumC2810a3;
        EnumC2810a enumC2810a4 = new EnumC2810a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2822m.m655c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2810a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2810a enumC2810a5 = new EnumC2810a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2822m.m655c(0L, 999L));
        MILLI_OF_SECOND = enumC2810a5;
        EnumC2810a enumC2810a6 = new EnumC2810a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2822m.m655c(0L, 86399999L));
        MILLI_OF_DAY = enumC2810a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2810a enumC2810a7 = new EnumC2810a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2822m.m655c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2810a7;
        EnumC2810a enumC2810a8 = new EnumC2810a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2822m.m655c(0L, 86399L));
        SECOND_OF_DAY = enumC2810a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2810a enumC2810a9 = new EnumC2810a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2822m.m655c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2810a9;
        EnumC2810a enumC2810a10 = new EnumC2810a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2822m.m655c(0L, 1439L));
        MINUTE_OF_DAY = enumC2810a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2810a enumC2810a11 = new EnumC2810a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2822m.m655c(0L, 11L));
        HOUR_OF_AMPM = enumC2810a11;
        EnumC2810a enumC2810a12 = new EnumC2810a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2822m.m655c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2810a12;
        EnumC2810a enumC2810a13 = new EnumC2810a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2822m.m655c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2810a13;
        EnumC2810a enumC2810a14 = new EnumC2810a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2822m.m655c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2810a14;
        EnumC2810a enumC2810a15 = new EnumC2810a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2822m.m655c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2810a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2810a enumC2810a16 = new EnumC2810a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2822m.m655c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2810a16;
        EnumC2810a enumC2810a17 = new EnumC2810a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2822m.m655c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2810a17;
        EnumC2810a enumC2810a18 = new EnumC2810a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2822m.m655c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2810a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2810a enumC2810a19 = new EnumC2810a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2822m.m654d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2810a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2810a enumC2810a20 = new EnumC2810a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2822m.m654d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2810a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2810a enumC2810a21 = new EnumC2810a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2822m.m655c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2810a21;
        EnumC2810a enumC2810a22 = new EnumC2810a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2822m.m654d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2810a22;
        EnumC2810a enumC2810a23 = new EnumC2810a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2822m.m655c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2810a23;
        EnumC2810a enumC2810a24 = new EnumC2810a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2822m.m655c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2810a24;
        EnumC2810a enumC2810a25 = new EnumC2810a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2822m.m655c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2810a25;
        EnumC2810a enumC2810a26 = new EnumC2810a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2822m.m654d(1L, 999999999L, C0479C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2810a26;
        EnumC2810a enumC2810a27 = new EnumC2810a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2822m.m655c(-999999999L, 999999999L), "year");
        YEAR = enumC2810a27;
        EnumC2810a enumC2810a28 = new EnumC2810a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2822m.m655c(0L, 1L), "era");
        ERA = enumC2810a28;
        EnumC2810a enumC2810a29 = new EnumC2810a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2822m.m655c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2810a29;
        EnumC2810a enumC2810a30 = new EnumC2810a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2822m.m655c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2810a30;
        f611c = new EnumC2810a[]{enumC2810a, enumC2810a2, enumC2810a3, enumC2810a4, enumC2810a5, enumC2810a6, enumC2810a7, enumC2810a8, enumC2810a9, enumC2810a10, enumC2810a11, enumC2810a12, enumC2810a13, enumC2810a14, enumC2810a15, enumC2810a16, enumC2810a17, enumC2810a18, enumC2810a19, enumC2810a20, enumC2810a21, enumC2810a22, enumC2810a23, enumC2810a24, enumC2810a25, enumC2810a26, enumC2810a27, enumC2810a28, enumC2810a29, enumC2810a30};
    }

    private EnumC2810a(String str, int i, String str2, InterfaceC2821l interfaceC2821l, InterfaceC2821l interfaceC2821l2, C2822m c2822m) {
        this.f612a = str2;
        this.f613b = c2822m;
    }

    private EnumC2810a(String str, int i, String str2, InterfaceC2821l interfaceC2821l, InterfaceC2821l interfaceC2821l2, C2822m c2822m, String str3) {
        this.f612a = str2;
        this.f613b = c2822m;
    }

    public static EnumC2810a valueOf(String str) {
        return (EnumC2810a) Enum.valueOf(EnumC2810a.class, str);
    }

    public static EnumC2810a[] values() {
        return (EnumC2810a[]) f611c.clone();
    }

    @Override // p033j$.time.temporal.InterfaceC2819j
    /* renamed from: a */
    public C2822m mo658a() {
        return this.f613b;
    }

    /* renamed from: b */
    public long m659b(long j) {
        this.f613b.m657a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f612a;
    }
}
