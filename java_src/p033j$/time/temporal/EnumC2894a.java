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
public final class EnumC2894a implements InterfaceC2903j {
    public static final EnumC2894a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2894a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2894a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2894a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2894a AMPM_OF_DAY;
    public static final EnumC2894a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2894a CLOCK_HOUR_OF_DAY;
    public static final EnumC2894a DAY_OF_MONTH;
    public static final EnumC2894a DAY_OF_WEEK;
    public static final EnumC2894a DAY_OF_YEAR;
    public static final EnumC2894a EPOCH_DAY;
    public static final EnumC2894a ERA;
    public static final EnumC2894a HOUR_OF_AMPM;
    public static final EnumC2894a HOUR_OF_DAY;
    public static final EnumC2894a INSTANT_SECONDS;
    public static final EnumC2894a MICRO_OF_DAY;
    public static final EnumC2894a MICRO_OF_SECOND;
    public static final EnumC2894a MILLI_OF_DAY;
    public static final EnumC2894a MILLI_OF_SECOND;
    public static final EnumC2894a MINUTE_OF_DAY;
    public static final EnumC2894a MINUTE_OF_HOUR;
    public static final EnumC2894a MONTH_OF_YEAR;
    public static final EnumC2894a NANO_OF_DAY;
    public static final EnumC2894a NANO_OF_SECOND;
    public static final EnumC2894a OFFSET_SECONDS;
    public static final EnumC2894a PROLEPTIC_MONTH;
    public static final EnumC2894a SECOND_OF_DAY;
    public static final EnumC2894a SECOND_OF_MINUTE;
    public static final EnumC2894a YEAR;
    public static final EnumC2894a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2894a[] f620c;

    /* renamed from: a */
    private final String f621a;

    /* renamed from: b */
    private final C2906m f622b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2894a enumC2894a = new EnumC2894a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2906m.m655c(0L, 999999999L));
        NANO_OF_SECOND = enumC2894a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2894a enumC2894a2 = new EnumC2894a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2906m.m655c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2894a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2894a enumC2894a3 = new EnumC2894a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2906m.m655c(0L, 999999L));
        MICRO_OF_SECOND = enumC2894a3;
        EnumC2894a enumC2894a4 = new EnumC2894a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2906m.m655c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2894a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2894a enumC2894a5 = new EnumC2894a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2906m.m655c(0L, 999L));
        MILLI_OF_SECOND = enumC2894a5;
        EnumC2894a enumC2894a6 = new EnumC2894a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2906m.m655c(0L, 86399999L));
        MILLI_OF_DAY = enumC2894a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2894a enumC2894a7 = new EnumC2894a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2906m.m655c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2894a7;
        EnumC2894a enumC2894a8 = new EnumC2894a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2906m.m655c(0L, 86399L));
        SECOND_OF_DAY = enumC2894a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2894a enumC2894a9 = new EnumC2894a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2906m.m655c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2894a9;
        EnumC2894a enumC2894a10 = new EnumC2894a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2906m.m655c(0L, 1439L));
        MINUTE_OF_DAY = enumC2894a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2894a enumC2894a11 = new EnumC2894a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2906m.m655c(0L, 11L));
        HOUR_OF_AMPM = enumC2894a11;
        EnumC2894a enumC2894a12 = new EnumC2894a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2906m.m655c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2894a12;
        EnumC2894a enumC2894a13 = new EnumC2894a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2906m.m655c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2894a13;
        EnumC2894a enumC2894a14 = new EnumC2894a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2906m.m655c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2894a14;
        EnumC2894a enumC2894a15 = new EnumC2894a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2906m.m655c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2894a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2894a enumC2894a16 = new EnumC2894a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2906m.m655c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2894a16;
        EnumC2894a enumC2894a17 = new EnumC2894a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2906m.m655c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2894a17;
        EnumC2894a enumC2894a18 = new EnumC2894a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2906m.m655c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2894a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2894a enumC2894a19 = new EnumC2894a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2906m.m654d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2894a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2894a enumC2894a20 = new EnumC2894a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2906m.m654d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2894a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2894a enumC2894a21 = new EnumC2894a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2906m.m655c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2894a21;
        EnumC2894a enumC2894a22 = new EnumC2894a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2906m.m654d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2894a22;
        EnumC2894a enumC2894a23 = new EnumC2894a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2906m.m655c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2894a23;
        EnumC2894a enumC2894a24 = new EnumC2894a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2906m.m655c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2894a24;
        EnumC2894a enumC2894a25 = new EnumC2894a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2906m.m655c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2894a25;
        EnumC2894a enumC2894a26 = new EnumC2894a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2906m.m654d(1L, 999999999L, C0479C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2894a26;
        EnumC2894a enumC2894a27 = new EnumC2894a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2906m.m655c(-999999999L, 999999999L), "year");
        YEAR = enumC2894a27;
        EnumC2894a enumC2894a28 = new EnumC2894a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2906m.m655c(0L, 1L), "era");
        ERA = enumC2894a28;
        EnumC2894a enumC2894a29 = new EnumC2894a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2906m.m655c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2894a29;
        EnumC2894a enumC2894a30 = new EnumC2894a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2906m.m655c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2894a30;
        f620c = new EnumC2894a[]{enumC2894a, enumC2894a2, enumC2894a3, enumC2894a4, enumC2894a5, enumC2894a6, enumC2894a7, enumC2894a8, enumC2894a9, enumC2894a10, enumC2894a11, enumC2894a12, enumC2894a13, enumC2894a14, enumC2894a15, enumC2894a16, enumC2894a17, enumC2894a18, enumC2894a19, enumC2894a20, enumC2894a21, enumC2894a22, enumC2894a23, enumC2894a24, enumC2894a25, enumC2894a26, enumC2894a27, enumC2894a28, enumC2894a29, enumC2894a30};
    }

    private EnumC2894a(String str, int i, String str2, InterfaceC2905l interfaceC2905l, InterfaceC2905l interfaceC2905l2, C2906m c2906m) {
        this.f621a = str2;
        this.f622b = c2906m;
    }

    private EnumC2894a(String str, int i, String str2, InterfaceC2905l interfaceC2905l, InterfaceC2905l interfaceC2905l2, C2906m c2906m, String str3) {
        this.f621a = str2;
        this.f622b = c2906m;
    }

    public static EnumC2894a valueOf(String str) {
        return (EnumC2894a) Enum.valueOf(EnumC2894a.class, str);
    }

    public static EnumC2894a[] values() {
        return (EnumC2894a[]) f620c.clone();
    }

    @Override // p033j$.time.temporal.InterfaceC2903j
    /* renamed from: a */
    public C2906m mo658a() {
        return this.f622b;
    }

    /* renamed from: b */
    public long m659b(long j) {
        this.f622b.m657a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f621a;
    }
}
