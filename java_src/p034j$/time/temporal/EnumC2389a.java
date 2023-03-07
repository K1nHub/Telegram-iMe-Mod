package p034j$.time.temporal;

import com.google.android.exoplayer2.C0474C;
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
public final class EnumC2389a implements InterfaceC2398j {
    public static final EnumC2389a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2389a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2389a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2389a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2389a AMPM_OF_DAY;
    public static final EnumC2389a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2389a CLOCK_HOUR_OF_DAY;
    public static final EnumC2389a DAY_OF_MONTH;
    public static final EnumC2389a DAY_OF_WEEK;
    public static final EnumC2389a DAY_OF_YEAR;
    public static final EnumC2389a EPOCH_DAY;
    public static final EnumC2389a ERA;
    public static final EnumC2389a HOUR_OF_AMPM;
    public static final EnumC2389a HOUR_OF_DAY;
    public static final EnumC2389a INSTANT_SECONDS;
    public static final EnumC2389a MICRO_OF_DAY;
    public static final EnumC2389a MICRO_OF_SECOND;
    public static final EnumC2389a MILLI_OF_DAY;
    public static final EnumC2389a MILLI_OF_SECOND;
    public static final EnumC2389a MINUTE_OF_DAY;
    public static final EnumC2389a MINUTE_OF_HOUR;
    public static final EnumC2389a MONTH_OF_YEAR;
    public static final EnumC2389a NANO_OF_DAY;
    public static final EnumC2389a NANO_OF_SECOND;
    public static final EnumC2389a OFFSET_SECONDS;
    public static final EnumC2389a PROLEPTIC_MONTH;
    public static final EnumC2389a SECOND_OF_DAY;
    public static final EnumC2389a SECOND_OF_MINUTE;
    public static final EnumC2389a YEAR;
    public static final EnumC2389a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2389a[] f516c;

    /* renamed from: a */
    private final String f517a;

    /* renamed from: b */
    private final C2401m f518b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2389a enumC2389a = new EnumC2389a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2401m.m652c(0L, 999999999L));
        NANO_OF_SECOND = enumC2389a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2389a enumC2389a2 = new EnumC2389a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2401m.m652c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2389a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2389a enumC2389a3 = new EnumC2389a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2401m.m652c(0L, 999999L));
        MICRO_OF_SECOND = enumC2389a3;
        EnumC2389a enumC2389a4 = new EnumC2389a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2401m.m652c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2389a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2389a enumC2389a5 = new EnumC2389a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2401m.m652c(0L, 999L));
        MILLI_OF_SECOND = enumC2389a5;
        EnumC2389a enumC2389a6 = new EnumC2389a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2401m.m652c(0L, 86399999L));
        MILLI_OF_DAY = enumC2389a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2389a enumC2389a7 = new EnumC2389a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2401m.m652c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2389a7;
        EnumC2389a enumC2389a8 = new EnumC2389a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2401m.m652c(0L, 86399L));
        SECOND_OF_DAY = enumC2389a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2389a enumC2389a9 = new EnumC2389a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2401m.m652c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2389a9;
        EnumC2389a enumC2389a10 = new EnumC2389a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2401m.m652c(0L, 1439L));
        MINUTE_OF_DAY = enumC2389a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2389a enumC2389a11 = new EnumC2389a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2401m.m652c(0L, 11L));
        HOUR_OF_AMPM = enumC2389a11;
        EnumC2389a enumC2389a12 = new EnumC2389a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2401m.m652c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2389a12;
        EnumC2389a enumC2389a13 = new EnumC2389a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2401m.m652c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2389a13;
        EnumC2389a enumC2389a14 = new EnumC2389a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2401m.m652c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2389a14;
        EnumC2389a enumC2389a15 = new EnumC2389a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2401m.m652c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2389a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2389a enumC2389a16 = new EnumC2389a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2401m.m652c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2389a16;
        EnumC2389a enumC2389a17 = new EnumC2389a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2401m.m652c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2389a17;
        EnumC2389a enumC2389a18 = new EnumC2389a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2401m.m652c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2389a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2389a enumC2389a19 = new EnumC2389a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2401m.m651d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2389a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2389a enumC2389a20 = new EnumC2389a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2401m.m651d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2389a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2389a enumC2389a21 = new EnumC2389a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2401m.m652c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2389a21;
        EnumC2389a enumC2389a22 = new EnumC2389a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2401m.m651d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2389a22;
        EnumC2389a enumC2389a23 = new EnumC2389a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2401m.m652c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2389a23;
        EnumC2389a enumC2389a24 = new EnumC2389a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2401m.m652c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2389a24;
        EnumC2389a enumC2389a25 = new EnumC2389a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2401m.m652c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2389a25;
        EnumC2389a enumC2389a26 = new EnumC2389a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2401m.m651d(1L, 999999999L, C0474C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2389a26;
        EnumC2389a enumC2389a27 = new EnumC2389a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2401m.m652c(-999999999L, 999999999L), "year");
        YEAR = enumC2389a27;
        EnumC2389a enumC2389a28 = new EnumC2389a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2401m.m652c(0L, 1L), "era");
        ERA = enumC2389a28;
        EnumC2389a enumC2389a29 = new EnumC2389a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2401m.m652c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2389a29;
        EnumC2389a enumC2389a30 = new EnumC2389a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2401m.m652c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2389a30;
        f516c = new EnumC2389a[]{enumC2389a, enumC2389a2, enumC2389a3, enumC2389a4, enumC2389a5, enumC2389a6, enumC2389a7, enumC2389a8, enumC2389a9, enumC2389a10, enumC2389a11, enumC2389a12, enumC2389a13, enumC2389a14, enumC2389a15, enumC2389a16, enumC2389a17, enumC2389a18, enumC2389a19, enumC2389a20, enumC2389a21, enumC2389a22, enumC2389a23, enumC2389a24, enumC2389a25, enumC2389a26, enumC2389a27, enumC2389a28, enumC2389a29, enumC2389a30};
    }

    private EnumC2389a(String str, int i, String str2, InterfaceC2400l interfaceC2400l, InterfaceC2400l interfaceC2400l2, C2401m c2401m) {
        this.f517a = str2;
        this.f518b = c2401m;
    }

    private EnumC2389a(String str, int i, String str2, InterfaceC2400l interfaceC2400l, InterfaceC2400l interfaceC2400l2, C2401m c2401m, String str3) {
        this.f517a = str2;
        this.f518b = c2401m;
    }

    public static EnumC2389a valueOf(String str) {
        return (EnumC2389a) Enum.valueOf(EnumC2389a.class, str);
    }

    public static EnumC2389a[] values() {
        return (EnumC2389a[]) f516c.clone();
    }

    @Override // p034j$.time.temporal.InterfaceC2398j
    /* renamed from: a */
    public C2401m mo655a() {
        return this.f518b;
    }

    /* renamed from: b */
    public long m656b(long j) {
        this.f518b.m654a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f517a;
    }
}
