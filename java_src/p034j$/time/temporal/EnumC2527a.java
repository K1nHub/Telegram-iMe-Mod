package p034j$.time.temporal;

import com.google.android.exoplayer2.C0468C;
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
public final class EnumC2527a implements InterfaceC2536j {
    public static final EnumC2527a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2527a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2527a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2527a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2527a AMPM_OF_DAY;
    public static final EnumC2527a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2527a CLOCK_HOUR_OF_DAY;
    public static final EnumC2527a DAY_OF_MONTH;
    public static final EnumC2527a DAY_OF_WEEK;
    public static final EnumC2527a DAY_OF_YEAR;
    public static final EnumC2527a EPOCH_DAY;
    public static final EnumC2527a ERA;
    public static final EnumC2527a HOUR_OF_AMPM;
    public static final EnumC2527a HOUR_OF_DAY;
    public static final EnumC2527a INSTANT_SECONDS;
    public static final EnumC2527a MICRO_OF_DAY;
    public static final EnumC2527a MICRO_OF_SECOND;
    public static final EnumC2527a MILLI_OF_DAY;
    public static final EnumC2527a MILLI_OF_SECOND;
    public static final EnumC2527a MINUTE_OF_DAY;
    public static final EnumC2527a MINUTE_OF_HOUR;
    public static final EnumC2527a MONTH_OF_YEAR;
    public static final EnumC2527a NANO_OF_DAY;
    public static final EnumC2527a NANO_OF_SECOND;
    public static final EnumC2527a OFFSET_SECONDS;
    public static final EnumC2527a PROLEPTIC_MONTH;
    public static final EnumC2527a SECOND_OF_DAY;
    public static final EnumC2527a SECOND_OF_MINUTE;
    public static final EnumC2527a YEAR;
    public static final EnumC2527a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2527a[] f522c;

    /* renamed from: a */
    private final String f523a;

    /* renamed from: b */
    private final C2539m f524b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2527a enumC2527a = new EnumC2527a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2539m.m651c(0L, 999999999L));
        NANO_OF_SECOND = enumC2527a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2527a enumC2527a2 = new EnumC2527a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2539m.m651c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2527a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2527a enumC2527a3 = new EnumC2527a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2539m.m651c(0L, 999999L));
        MICRO_OF_SECOND = enumC2527a3;
        EnumC2527a enumC2527a4 = new EnumC2527a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2539m.m651c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2527a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2527a enumC2527a5 = new EnumC2527a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2539m.m651c(0L, 999L));
        MILLI_OF_SECOND = enumC2527a5;
        EnumC2527a enumC2527a6 = new EnumC2527a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2539m.m651c(0L, 86399999L));
        MILLI_OF_DAY = enumC2527a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2527a enumC2527a7 = new EnumC2527a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2539m.m651c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2527a7;
        EnumC2527a enumC2527a8 = new EnumC2527a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2539m.m651c(0L, 86399L));
        SECOND_OF_DAY = enumC2527a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2527a enumC2527a9 = new EnumC2527a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2539m.m651c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2527a9;
        EnumC2527a enumC2527a10 = new EnumC2527a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2539m.m651c(0L, 1439L));
        MINUTE_OF_DAY = enumC2527a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2527a enumC2527a11 = new EnumC2527a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2539m.m651c(0L, 11L));
        HOUR_OF_AMPM = enumC2527a11;
        EnumC2527a enumC2527a12 = new EnumC2527a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2539m.m651c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2527a12;
        EnumC2527a enumC2527a13 = new EnumC2527a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2539m.m651c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2527a13;
        EnumC2527a enumC2527a14 = new EnumC2527a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2539m.m651c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2527a14;
        EnumC2527a enumC2527a15 = new EnumC2527a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2539m.m651c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2527a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2527a enumC2527a16 = new EnumC2527a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2539m.m651c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2527a16;
        EnumC2527a enumC2527a17 = new EnumC2527a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2539m.m651c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2527a17;
        EnumC2527a enumC2527a18 = new EnumC2527a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2539m.m651c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2527a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2527a enumC2527a19 = new EnumC2527a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2539m.m650d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2527a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2527a enumC2527a20 = new EnumC2527a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2539m.m650d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2527a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2527a enumC2527a21 = new EnumC2527a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2539m.m651c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2527a21;
        EnumC2527a enumC2527a22 = new EnumC2527a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2539m.m650d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2527a22;
        EnumC2527a enumC2527a23 = new EnumC2527a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2539m.m651c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2527a23;
        EnumC2527a enumC2527a24 = new EnumC2527a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2539m.m651c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2527a24;
        EnumC2527a enumC2527a25 = new EnumC2527a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2539m.m651c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2527a25;
        EnumC2527a enumC2527a26 = new EnumC2527a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2539m.m650d(1L, 999999999L, C0468C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2527a26;
        EnumC2527a enumC2527a27 = new EnumC2527a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2539m.m651c(-999999999L, 999999999L), "year");
        YEAR = enumC2527a27;
        EnumC2527a enumC2527a28 = new EnumC2527a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2539m.m651c(0L, 1L), "era");
        ERA = enumC2527a28;
        EnumC2527a enumC2527a29 = new EnumC2527a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2539m.m651c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2527a29;
        EnumC2527a enumC2527a30 = new EnumC2527a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2539m.m651c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2527a30;
        f522c = new EnumC2527a[]{enumC2527a, enumC2527a2, enumC2527a3, enumC2527a4, enumC2527a5, enumC2527a6, enumC2527a7, enumC2527a8, enumC2527a9, enumC2527a10, enumC2527a11, enumC2527a12, enumC2527a13, enumC2527a14, enumC2527a15, enumC2527a16, enumC2527a17, enumC2527a18, enumC2527a19, enumC2527a20, enumC2527a21, enumC2527a22, enumC2527a23, enumC2527a24, enumC2527a25, enumC2527a26, enumC2527a27, enumC2527a28, enumC2527a29, enumC2527a30};
    }

    private EnumC2527a(String str, int i, String str2, InterfaceC2538l interfaceC2538l, InterfaceC2538l interfaceC2538l2, C2539m c2539m) {
        this.f523a = str2;
        this.f524b = c2539m;
    }

    private EnumC2527a(String str, int i, String str2, InterfaceC2538l interfaceC2538l, InterfaceC2538l interfaceC2538l2, C2539m c2539m, String str3) {
        this.f523a = str2;
        this.f524b = c2539m;
    }

    public static EnumC2527a valueOf(String str) {
        return (EnumC2527a) Enum.valueOf(EnumC2527a.class, str);
    }

    public static EnumC2527a[] values() {
        return (EnumC2527a[]) f522c.clone();
    }

    @Override // p034j$.time.temporal.InterfaceC2536j
    /* renamed from: a */
    public C2539m mo654a() {
        return this.f524b;
    }

    /* renamed from: b */
    public long m655b(long j) {
        this.f524b.m653a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f523a;
    }
}
