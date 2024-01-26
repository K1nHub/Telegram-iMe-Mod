package p033j$.time.temporal;

import com.google.android.exoplayer2.C0483C;
import java.util.Map;
import p033j$.time.format.EnumC2715z;
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
public final class EnumC2729a implements InterfaceC2743o {
    public static final EnumC2729a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2729a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2729a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2729a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2729a AMPM_OF_DAY;
    public static final EnumC2729a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2729a CLOCK_HOUR_OF_DAY;
    public static final EnumC2729a DAY_OF_MONTH;
    public static final EnumC2729a DAY_OF_WEEK;
    public static final EnumC2729a DAY_OF_YEAR;
    public static final EnumC2729a EPOCH_DAY;
    public static final EnumC2729a ERA;
    public static final EnumC2729a HOUR_OF_AMPM;
    public static final EnumC2729a HOUR_OF_DAY;
    public static final EnumC2729a INSTANT_SECONDS;
    public static final EnumC2729a MICRO_OF_DAY;
    public static final EnumC2729a MICRO_OF_SECOND;
    public static final EnumC2729a MILLI_OF_DAY;
    public static final EnumC2729a MILLI_OF_SECOND;
    public static final EnumC2729a MINUTE_OF_DAY;
    public static final EnumC2729a MINUTE_OF_HOUR;
    public static final EnumC2729a MONTH_OF_YEAR;
    public static final EnumC2729a NANO_OF_DAY;
    public static final EnumC2729a NANO_OF_SECOND;
    public static final EnumC2729a OFFSET_SECONDS;
    public static final EnumC2729a PROLEPTIC_MONTH;
    public static final EnumC2729a SECOND_OF_DAY;
    public static final EnumC2729a SECOND_OF_MINUTE;
    public static final EnumC2729a YEAR;
    public static final EnumC2729a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2729a[] f628c;

    /* renamed from: a */
    private final String f629a;

    /* renamed from: b */
    private final C2728A f630b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2729a enumC2729a = new EnumC2729a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2728A.m760i(0L, 999999999L));
        NANO_OF_SECOND = enumC2729a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2729a enumC2729a2 = new EnumC2729a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2728A.m760i(0L, 86399999999999L));
        NANO_OF_DAY = enumC2729a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2729a enumC2729a3 = new EnumC2729a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2728A.m760i(0L, 999999L));
        MICRO_OF_SECOND = enumC2729a3;
        EnumC2729a enumC2729a4 = new EnumC2729a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2728A.m760i(0L, 86399999999L));
        MICRO_OF_DAY = enumC2729a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2729a enumC2729a5 = new EnumC2729a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2728A.m760i(0L, 999L));
        MILLI_OF_SECOND = enumC2729a5;
        EnumC2729a enumC2729a6 = new EnumC2729a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2728A.m760i(0L, 86399999L));
        MILLI_OF_DAY = enumC2729a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2729a enumC2729a7 = new EnumC2729a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2728A.m760i(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2729a7;
        EnumC2729a enumC2729a8 = new EnumC2729a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2728A.m760i(0L, 86399L));
        SECOND_OF_DAY = enumC2729a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2729a enumC2729a9 = new EnumC2729a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2728A.m760i(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2729a9;
        EnumC2729a enumC2729a10 = new EnumC2729a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2728A.m760i(0L, 1439L));
        MINUTE_OF_DAY = enumC2729a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2729a enumC2729a11 = new EnumC2729a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2728A.m760i(0L, 11L));
        HOUR_OF_AMPM = enumC2729a11;
        EnumC2729a enumC2729a12 = new EnumC2729a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2728A.m760i(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2729a12;
        EnumC2729a enumC2729a13 = new EnumC2729a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2728A.m760i(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2729a13;
        EnumC2729a enumC2729a14 = new EnumC2729a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2728A.m760i(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2729a14;
        EnumC2729a enumC2729a15 = new EnumC2729a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2728A.m760i(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2729a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2729a enumC2729a16 = new EnumC2729a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2728A.m760i(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2729a16;
        EnumC2729a enumC2729a17 = new EnumC2729a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2728A.m760i(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2729a17;
        EnumC2729a enumC2729a18 = new EnumC2729a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2728A.m760i(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2729a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2729a enumC2729a19 = new EnumC2729a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2728A.m759j(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2729a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2729a enumC2729a20 = new EnumC2729a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2728A.m759j(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2729a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2729a enumC2729a21 = new EnumC2729a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2728A.m760i(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2729a21;
        EnumC2729a enumC2729a22 = new EnumC2729a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2728A.m759j(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2729a22;
        EnumC2729a enumC2729a23 = new EnumC2729a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2728A.m760i(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2729a23;
        EnumC2729a enumC2729a24 = new EnumC2729a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2728A.m760i(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2729a24;
        EnumC2729a enumC2729a25 = new EnumC2729a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2728A.m760i(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2729a25;
        EnumC2729a enumC2729a26 = new EnumC2729a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2728A.m759j(1L, 999999999L, C0483C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2729a26;
        EnumC2729a enumC2729a27 = new EnumC2729a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2728A.m760i(-999999999L, 999999999L), "year");
        YEAR = enumC2729a27;
        EnumC2729a enumC2729a28 = new EnumC2729a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2728A.m760i(0L, 1L), "era");
        ERA = enumC2729a28;
        EnumC2729a enumC2729a29 = new EnumC2729a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2728A.m760i(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2729a29;
        EnumC2729a enumC2729a30 = new EnumC2729a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2728A.m760i(-64800L, 64800L));
        OFFSET_SECONDS = enumC2729a30;
        f628c = new EnumC2729a[]{enumC2729a, enumC2729a2, enumC2729a3, enumC2729a4, enumC2729a5, enumC2729a6, enumC2729a7, enumC2729a8, enumC2729a9, enumC2729a10, enumC2729a11, enumC2729a12, enumC2729a13, enumC2729a14, enumC2729a15, enumC2729a16, enumC2729a17, enumC2729a18, enumC2729a19, enumC2729a20, enumC2729a21, enumC2729a22, enumC2729a23, enumC2729a24, enumC2729a25, enumC2729a26, enumC2729a27, enumC2729a28, enumC2729a29, enumC2729a30};
    }

    private EnumC2729a(String str, int i, String str2, InterfaceC2753y interfaceC2753y, InterfaceC2753y interfaceC2753y2, C2728A c2728a) {
        this.f629a = str2;
        this.f630b = c2728a;
    }

    private EnumC2729a(String str, int i, String str2, InterfaceC2753y interfaceC2753y, InterfaceC2753y interfaceC2753y2, C2728A c2728a, String str3) {
        this.f629a = str2;
        this.f630b = c2728a;
    }

    public static EnumC2729a valueOf(String str) {
        return (EnumC2729a) Enum.valueOf(EnumC2729a.class, str);
    }

    public static EnumC2729a[] values() {
        return (EnumC2729a[]) f628c.clone();
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: a */
    public C2728A mo734a() {
        return this.f630b;
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: b */
    public boolean mo733b() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: c */
    public /* synthetic */ InterfaceC2739k mo732c(Map map, InterfaceC2739k interfaceC2739k, EnumC2715z enumC2715z) {
        return null;
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: d */
    public long mo731d(InterfaceC2739k interfaceC2739k) {
        return interfaceC2739k.mo742e(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: e */
    public boolean mo730e(InterfaceC2739k interfaceC2739k) {
        return interfaceC2739k.mo740i(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: f */
    public InterfaceC2738j mo729f(InterfaceC2738j interfaceC2738j, long j) {
        return interfaceC2738j.mo746b(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: g */
    public C2728A mo728g(InterfaceC2739k interfaceC2739k) {
        return interfaceC2739k.mo743d(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: h */
    public boolean mo727h() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    /* renamed from: i */
    public int m757i(long j) {
        return this.f630b.m768a(j, this);
    }

    /* renamed from: j */
    public long m756j(long j) {
        this.f630b.m767b(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f629a;
    }
}
