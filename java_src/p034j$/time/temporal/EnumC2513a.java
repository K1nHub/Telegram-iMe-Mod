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
public final class EnumC2513a implements InterfaceC2522j {
    public static final EnumC2513a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2513a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2513a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2513a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2513a AMPM_OF_DAY;
    public static final EnumC2513a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2513a CLOCK_HOUR_OF_DAY;
    public static final EnumC2513a DAY_OF_MONTH;
    public static final EnumC2513a DAY_OF_WEEK;
    public static final EnumC2513a DAY_OF_YEAR;
    public static final EnumC2513a EPOCH_DAY;
    public static final EnumC2513a ERA;
    public static final EnumC2513a HOUR_OF_AMPM;
    public static final EnumC2513a HOUR_OF_DAY;
    public static final EnumC2513a INSTANT_SECONDS;
    public static final EnumC2513a MICRO_OF_DAY;
    public static final EnumC2513a MICRO_OF_SECOND;
    public static final EnumC2513a MILLI_OF_DAY;
    public static final EnumC2513a MILLI_OF_SECOND;
    public static final EnumC2513a MINUTE_OF_DAY;
    public static final EnumC2513a MINUTE_OF_HOUR;
    public static final EnumC2513a MONTH_OF_YEAR;
    public static final EnumC2513a NANO_OF_DAY;
    public static final EnumC2513a NANO_OF_SECOND;
    public static final EnumC2513a OFFSET_SECONDS;
    public static final EnumC2513a PROLEPTIC_MONTH;
    public static final EnumC2513a SECOND_OF_DAY;
    public static final EnumC2513a SECOND_OF_MINUTE;
    public static final EnumC2513a YEAR;
    public static final EnumC2513a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2513a[] f521c;

    /* renamed from: a */
    private final String f522a;

    /* renamed from: b */
    private final C2525m f523b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2513a enumC2513a = new EnumC2513a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2525m.m652c(0L, 999999999L));
        NANO_OF_SECOND = enumC2513a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2513a enumC2513a2 = new EnumC2513a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2525m.m652c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2513a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2513a enumC2513a3 = new EnumC2513a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2525m.m652c(0L, 999999L));
        MICRO_OF_SECOND = enumC2513a3;
        EnumC2513a enumC2513a4 = new EnumC2513a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2525m.m652c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2513a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2513a enumC2513a5 = new EnumC2513a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2525m.m652c(0L, 999L));
        MILLI_OF_SECOND = enumC2513a5;
        EnumC2513a enumC2513a6 = new EnumC2513a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2525m.m652c(0L, 86399999L));
        MILLI_OF_DAY = enumC2513a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2513a enumC2513a7 = new EnumC2513a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2525m.m652c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2513a7;
        EnumC2513a enumC2513a8 = new EnumC2513a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2525m.m652c(0L, 86399L));
        SECOND_OF_DAY = enumC2513a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2513a enumC2513a9 = new EnumC2513a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2525m.m652c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2513a9;
        EnumC2513a enumC2513a10 = new EnumC2513a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2525m.m652c(0L, 1439L));
        MINUTE_OF_DAY = enumC2513a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2513a enumC2513a11 = new EnumC2513a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2525m.m652c(0L, 11L));
        HOUR_OF_AMPM = enumC2513a11;
        EnumC2513a enumC2513a12 = new EnumC2513a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2525m.m652c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2513a12;
        EnumC2513a enumC2513a13 = new EnumC2513a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2525m.m652c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2513a13;
        EnumC2513a enumC2513a14 = new EnumC2513a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2525m.m652c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2513a14;
        EnumC2513a enumC2513a15 = new EnumC2513a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2525m.m652c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2513a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2513a enumC2513a16 = new EnumC2513a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2525m.m652c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2513a16;
        EnumC2513a enumC2513a17 = new EnumC2513a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2525m.m652c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2513a17;
        EnumC2513a enumC2513a18 = new EnumC2513a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2525m.m652c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2513a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2513a enumC2513a19 = new EnumC2513a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2525m.m651d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2513a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2513a enumC2513a20 = new EnumC2513a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2525m.m651d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2513a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2513a enumC2513a21 = new EnumC2513a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2525m.m652c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2513a21;
        EnumC2513a enumC2513a22 = new EnumC2513a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2525m.m651d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2513a22;
        EnumC2513a enumC2513a23 = new EnumC2513a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2525m.m652c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2513a23;
        EnumC2513a enumC2513a24 = new EnumC2513a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2525m.m652c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2513a24;
        EnumC2513a enumC2513a25 = new EnumC2513a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2525m.m652c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2513a25;
        EnumC2513a enumC2513a26 = new EnumC2513a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2525m.m651d(1L, 999999999L, C0468C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2513a26;
        EnumC2513a enumC2513a27 = new EnumC2513a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2525m.m652c(-999999999L, 999999999L), "year");
        YEAR = enumC2513a27;
        EnumC2513a enumC2513a28 = new EnumC2513a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2525m.m652c(0L, 1L), "era");
        ERA = enumC2513a28;
        EnumC2513a enumC2513a29 = new EnumC2513a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2525m.m652c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2513a29;
        EnumC2513a enumC2513a30 = new EnumC2513a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2525m.m652c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2513a30;
        f521c = new EnumC2513a[]{enumC2513a, enumC2513a2, enumC2513a3, enumC2513a4, enumC2513a5, enumC2513a6, enumC2513a7, enumC2513a8, enumC2513a9, enumC2513a10, enumC2513a11, enumC2513a12, enumC2513a13, enumC2513a14, enumC2513a15, enumC2513a16, enumC2513a17, enumC2513a18, enumC2513a19, enumC2513a20, enumC2513a21, enumC2513a22, enumC2513a23, enumC2513a24, enumC2513a25, enumC2513a26, enumC2513a27, enumC2513a28, enumC2513a29, enumC2513a30};
    }

    private EnumC2513a(String str, int i, String str2, InterfaceC2524l interfaceC2524l, InterfaceC2524l interfaceC2524l2, C2525m c2525m) {
        this.f522a = str2;
        this.f523b = c2525m;
    }

    private EnumC2513a(String str, int i, String str2, InterfaceC2524l interfaceC2524l, InterfaceC2524l interfaceC2524l2, C2525m c2525m, String str3) {
        this.f522a = str2;
        this.f523b = c2525m;
    }

    public static EnumC2513a valueOf(String str) {
        return (EnumC2513a) Enum.valueOf(EnumC2513a.class, str);
    }

    public static EnumC2513a[] values() {
        return (EnumC2513a[]) f521c.clone();
    }

    @Override // p034j$.time.temporal.InterfaceC2522j
    /* renamed from: a */
    public C2525m mo655a() {
        return this.f523b;
    }

    /* renamed from: b */
    public long m656b(long j) {
        this.f523b.m654a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f522a;
    }
}
