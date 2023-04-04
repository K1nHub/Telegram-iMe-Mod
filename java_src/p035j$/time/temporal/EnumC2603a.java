package p035j$.time.temporal;

import com.google.android.exoplayer2.C0482C;
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
public final class EnumC2603a implements InterfaceC2612j {
    public static final EnumC2603a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2603a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2603a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2603a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2603a AMPM_OF_DAY;
    public static final EnumC2603a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2603a CLOCK_HOUR_OF_DAY;
    public static final EnumC2603a DAY_OF_MONTH;
    public static final EnumC2603a DAY_OF_WEEK;
    public static final EnumC2603a DAY_OF_YEAR;
    public static final EnumC2603a EPOCH_DAY;
    public static final EnumC2603a ERA;
    public static final EnumC2603a HOUR_OF_AMPM;
    public static final EnumC2603a HOUR_OF_DAY;
    public static final EnumC2603a INSTANT_SECONDS;
    public static final EnumC2603a MICRO_OF_DAY;
    public static final EnumC2603a MICRO_OF_SECOND;
    public static final EnumC2603a MILLI_OF_DAY;
    public static final EnumC2603a MILLI_OF_SECOND;
    public static final EnumC2603a MINUTE_OF_DAY;
    public static final EnumC2603a MINUTE_OF_HOUR;
    public static final EnumC2603a MONTH_OF_YEAR;
    public static final EnumC2603a NANO_OF_DAY;
    public static final EnumC2603a NANO_OF_SECOND;
    public static final EnumC2603a OFFSET_SECONDS;
    public static final EnumC2603a PROLEPTIC_MONTH;
    public static final EnumC2603a SECOND_OF_DAY;
    public static final EnumC2603a SECOND_OF_MINUTE;
    public static final EnumC2603a YEAR;
    public static final EnumC2603a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2603a[] f527c;

    /* renamed from: a */
    private final String f528a;

    /* renamed from: b */
    private final C2615m f529b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2603a enumC2603a = new EnumC2603a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2615m.m646c(0L, 999999999L));
        NANO_OF_SECOND = enumC2603a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2603a enumC2603a2 = new EnumC2603a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2615m.m646c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2603a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2603a enumC2603a3 = new EnumC2603a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2615m.m646c(0L, 999999L));
        MICRO_OF_SECOND = enumC2603a3;
        EnumC2603a enumC2603a4 = new EnumC2603a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2615m.m646c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2603a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2603a enumC2603a5 = new EnumC2603a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2615m.m646c(0L, 999L));
        MILLI_OF_SECOND = enumC2603a5;
        EnumC2603a enumC2603a6 = new EnumC2603a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2615m.m646c(0L, 86399999L));
        MILLI_OF_DAY = enumC2603a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2603a enumC2603a7 = new EnumC2603a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2615m.m646c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2603a7;
        EnumC2603a enumC2603a8 = new EnumC2603a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2615m.m646c(0L, 86399L));
        SECOND_OF_DAY = enumC2603a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2603a enumC2603a9 = new EnumC2603a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2615m.m646c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2603a9;
        EnumC2603a enumC2603a10 = new EnumC2603a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2615m.m646c(0L, 1439L));
        MINUTE_OF_DAY = enumC2603a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2603a enumC2603a11 = new EnumC2603a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2615m.m646c(0L, 11L));
        HOUR_OF_AMPM = enumC2603a11;
        EnumC2603a enumC2603a12 = new EnumC2603a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2615m.m646c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2603a12;
        EnumC2603a enumC2603a13 = new EnumC2603a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2615m.m646c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2603a13;
        EnumC2603a enumC2603a14 = new EnumC2603a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2615m.m646c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2603a14;
        EnumC2603a enumC2603a15 = new EnumC2603a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2615m.m646c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2603a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2603a enumC2603a16 = new EnumC2603a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2615m.m646c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2603a16;
        EnumC2603a enumC2603a17 = new EnumC2603a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2615m.m646c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2603a17;
        EnumC2603a enumC2603a18 = new EnumC2603a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2615m.m646c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2603a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2603a enumC2603a19 = new EnumC2603a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2615m.m645d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2603a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2603a enumC2603a20 = new EnumC2603a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2615m.m645d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2603a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2603a enumC2603a21 = new EnumC2603a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2615m.m646c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2603a21;
        EnumC2603a enumC2603a22 = new EnumC2603a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2615m.m645d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2603a22;
        EnumC2603a enumC2603a23 = new EnumC2603a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2615m.m646c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2603a23;
        EnumC2603a enumC2603a24 = new EnumC2603a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2615m.m646c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2603a24;
        EnumC2603a enumC2603a25 = new EnumC2603a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2615m.m646c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2603a25;
        EnumC2603a enumC2603a26 = new EnumC2603a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2615m.m645d(1L, 999999999L, C0482C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2603a26;
        EnumC2603a enumC2603a27 = new EnumC2603a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2615m.m646c(-999999999L, 999999999L), "year");
        YEAR = enumC2603a27;
        EnumC2603a enumC2603a28 = new EnumC2603a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2615m.m646c(0L, 1L), "era");
        ERA = enumC2603a28;
        EnumC2603a enumC2603a29 = new EnumC2603a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2615m.m646c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2603a29;
        EnumC2603a enumC2603a30 = new EnumC2603a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2615m.m646c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2603a30;
        f527c = new EnumC2603a[]{enumC2603a, enumC2603a2, enumC2603a3, enumC2603a4, enumC2603a5, enumC2603a6, enumC2603a7, enumC2603a8, enumC2603a9, enumC2603a10, enumC2603a11, enumC2603a12, enumC2603a13, enumC2603a14, enumC2603a15, enumC2603a16, enumC2603a17, enumC2603a18, enumC2603a19, enumC2603a20, enumC2603a21, enumC2603a22, enumC2603a23, enumC2603a24, enumC2603a25, enumC2603a26, enumC2603a27, enumC2603a28, enumC2603a29, enumC2603a30};
    }

    private EnumC2603a(String str, int i, String str2, InterfaceC2614l interfaceC2614l, InterfaceC2614l interfaceC2614l2, C2615m c2615m) {
        this.f528a = str2;
        this.f529b = c2615m;
    }

    private EnumC2603a(String str, int i, String str2, InterfaceC2614l interfaceC2614l, InterfaceC2614l interfaceC2614l2, C2615m c2615m, String str3) {
        this.f528a = str2;
        this.f529b = c2615m;
    }

    public static EnumC2603a valueOf(String str) {
        return (EnumC2603a) Enum.valueOf(EnumC2603a.class, str);
    }

    public static EnumC2603a[] values() {
        return (EnumC2603a[]) f527c.clone();
    }

    @Override // p035j$.time.temporal.InterfaceC2612j
    /* renamed from: a */
    public C2615m mo649a() {
        return this.f529b;
    }

    /* renamed from: b */
    public long m650b(long j) {
        this.f529b.m648a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f528a;
    }
}
