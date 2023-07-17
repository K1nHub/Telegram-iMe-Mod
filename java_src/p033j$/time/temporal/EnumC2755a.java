package p033j$.time.temporal;

import com.google.android.exoplayer2.C0480C;
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
public final class EnumC2755a implements InterfaceC2764j {
    public static final EnumC2755a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2755a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2755a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2755a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2755a AMPM_OF_DAY;
    public static final EnumC2755a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2755a CLOCK_HOUR_OF_DAY;
    public static final EnumC2755a DAY_OF_MONTH;
    public static final EnumC2755a DAY_OF_WEEK;
    public static final EnumC2755a DAY_OF_YEAR;
    public static final EnumC2755a EPOCH_DAY;
    public static final EnumC2755a ERA;
    public static final EnumC2755a HOUR_OF_AMPM;
    public static final EnumC2755a HOUR_OF_DAY;
    public static final EnumC2755a INSTANT_SECONDS;
    public static final EnumC2755a MICRO_OF_DAY;
    public static final EnumC2755a MICRO_OF_SECOND;
    public static final EnumC2755a MILLI_OF_DAY;
    public static final EnumC2755a MILLI_OF_SECOND;
    public static final EnumC2755a MINUTE_OF_DAY;
    public static final EnumC2755a MINUTE_OF_HOUR;
    public static final EnumC2755a MONTH_OF_YEAR;
    public static final EnumC2755a NANO_OF_DAY;
    public static final EnumC2755a NANO_OF_SECOND;
    public static final EnumC2755a OFFSET_SECONDS;
    public static final EnumC2755a PROLEPTIC_MONTH;
    public static final EnumC2755a SECOND_OF_DAY;
    public static final EnumC2755a SECOND_OF_MINUTE;
    public static final EnumC2755a YEAR;
    public static final EnumC2755a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2755a[] f607c;

    /* renamed from: a */
    private final String f608a;

    /* renamed from: b */
    private final C2767m f609b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2755a enumC2755a = new EnumC2755a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2767m.m637c(0L, 999999999L));
        NANO_OF_SECOND = enumC2755a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2755a enumC2755a2 = new EnumC2755a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2767m.m637c(0L, 86399999999999L));
        NANO_OF_DAY = enumC2755a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2755a enumC2755a3 = new EnumC2755a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2767m.m637c(0L, 999999L));
        MICRO_OF_SECOND = enumC2755a3;
        EnumC2755a enumC2755a4 = new EnumC2755a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2767m.m637c(0L, 86399999999L));
        MICRO_OF_DAY = enumC2755a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2755a enumC2755a5 = new EnumC2755a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2767m.m637c(0L, 999L));
        MILLI_OF_SECOND = enumC2755a5;
        EnumC2755a enumC2755a6 = new EnumC2755a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2767m.m637c(0L, 86399999L));
        MILLI_OF_DAY = enumC2755a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2755a enumC2755a7 = new EnumC2755a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2767m.m637c(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2755a7;
        EnumC2755a enumC2755a8 = new EnumC2755a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2767m.m637c(0L, 86399L));
        SECOND_OF_DAY = enumC2755a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2755a enumC2755a9 = new EnumC2755a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2767m.m637c(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2755a9;
        EnumC2755a enumC2755a10 = new EnumC2755a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2767m.m637c(0L, 1439L));
        MINUTE_OF_DAY = enumC2755a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2755a enumC2755a11 = new EnumC2755a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2767m.m637c(0L, 11L));
        HOUR_OF_AMPM = enumC2755a11;
        EnumC2755a enumC2755a12 = new EnumC2755a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2767m.m637c(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2755a12;
        EnumC2755a enumC2755a13 = new EnumC2755a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2767m.m637c(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2755a13;
        EnumC2755a enumC2755a14 = new EnumC2755a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2767m.m637c(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2755a14;
        EnumC2755a enumC2755a15 = new EnumC2755a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2767m.m637c(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2755a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2755a enumC2755a16 = new EnumC2755a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2767m.m637c(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2755a16;
        EnumC2755a enumC2755a17 = new EnumC2755a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2767m.m637c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2755a17;
        EnumC2755a enumC2755a18 = new EnumC2755a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2767m.m637c(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2755a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2755a enumC2755a19 = new EnumC2755a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2767m.m636d(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2755a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2755a enumC2755a20 = new EnumC2755a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2767m.m636d(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2755a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2755a enumC2755a21 = new EnumC2755a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2767m.m637c(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2755a21;
        EnumC2755a enumC2755a22 = new EnumC2755a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2767m.m636d(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2755a22;
        EnumC2755a enumC2755a23 = new EnumC2755a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2767m.m637c(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2755a23;
        EnumC2755a enumC2755a24 = new EnumC2755a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2767m.m637c(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2755a24;
        EnumC2755a enumC2755a25 = new EnumC2755a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2767m.m637c(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2755a25;
        EnumC2755a enumC2755a26 = new EnumC2755a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2767m.m636d(1L, 999999999L, C0480C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2755a26;
        EnumC2755a enumC2755a27 = new EnumC2755a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2767m.m637c(-999999999L, 999999999L), "year");
        YEAR = enumC2755a27;
        EnumC2755a enumC2755a28 = new EnumC2755a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2767m.m637c(0L, 1L), "era");
        ERA = enumC2755a28;
        EnumC2755a enumC2755a29 = new EnumC2755a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2767m.m637c(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2755a29;
        EnumC2755a enumC2755a30 = new EnumC2755a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2767m.m637c(-64800L, 64800L));
        OFFSET_SECONDS = enumC2755a30;
        f607c = new EnumC2755a[]{enumC2755a, enumC2755a2, enumC2755a3, enumC2755a4, enumC2755a5, enumC2755a6, enumC2755a7, enumC2755a8, enumC2755a9, enumC2755a10, enumC2755a11, enumC2755a12, enumC2755a13, enumC2755a14, enumC2755a15, enumC2755a16, enumC2755a17, enumC2755a18, enumC2755a19, enumC2755a20, enumC2755a21, enumC2755a22, enumC2755a23, enumC2755a24, enumC2755a25, enumC2755a26, enumC2755a27, enumC2755a28, enumC2755a29, enumC2755a30};
    }

    private EnumC2755a(String str, int i, String str2, InterfaceC2766l interfaceC2766l, InterfaceC2766l interfaceC2766l2, C2767m c2767m) {
        this.f608a = str2;
        this.f609b = c2767m;
    }

    private EnumC2755a(String str, int i, String str2, InterfaceC2766l interfaceC2766l, InterfaceC2766l interfaceC2766l2, C2767m c2767m, String str3) {
        this.f608a = str2;
        this.f609b = c2767m;
    }

    public static EnumC2755a valueOf(String str) {
        return (EnumC2755a) Enum.valueOf(EnumC2755a.class, str);
    }

    public static EnumC2755a[] values() {
        return (EnumC2755a[]) f607c.clone();
    }

    @Override // p033j$.time.temporal.InterfaceC2764j
    /* renamed from: a */
    public C2767m mo640a() {
        return this.f609b;
    }

    /* renamed from: b */
    public long m641b(long j) {
        this.f609b.m639a(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f608a;
    }
}
