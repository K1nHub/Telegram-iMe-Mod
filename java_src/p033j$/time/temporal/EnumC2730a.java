package p033j$.time.temporal;

import com.google.android.exoplayer2.C0479C;
import java.util.Map;
import p033j$.time.format.EnumC2716z;
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
public final class EnumC2730a implements InterfaceC2744o {
    public static final EnumC2730a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2730a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2730a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2730a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2730a AMPM_OF_DAY;
    public static final EnumC2730a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2730a CLOCK_HOUR_OF_DAY;
    public static final EnumC2730a DAY_OF_MONTH;
    public static final EnumC2730a DAY_OF_WEEK;
    public static final EnumC2730a DAY_OF_YEAR;
    public static final EnumC2730a EPOCH_DAY;
    public static final EnumC2730a ERA;
    public static final EnumC2730a HOUR_OF_AMPM;
    public static final EnumC2730a HOUR_OF_DAY;
    public static final EnumC2730a INSTANT_SECONDS;
    public static final EnumC2730a MICRO_OF_DAY;
    public static final EnumC2730a MICRO_OF_SECOND;
    public static final EnumC2730a MILLI_OF_DAY;
    public static final EnumC2730a MILLI_OF_SECOND;
    public static final EnumC2730a MINUTE_OF_DAY;
    public static final EnumC2730a MINUTE_OF_HOUR;
    public static final EnumC2730a MONTH_OF_YEAR;
    public static final EnumC2730a NANO_OF_DAY;
    public static final EnumC2730a NANO_OF_SECOND;
    public static final EnumC2730a OFFSET_SECONDS;
    public static final EnumC2730a PROLEPTIC_MONTH;
    public static final EnumC2730a SECOND_OF_DAY;
    public static final EnumC2730a SECOND_OF_MINUTE;
    public static final EnumC2730a YEAR;
    public static final EnumC2730a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2730a[] f628c;

    /* renamed from: a */
    private final String f629a;

    /* renamed from: b */
    private final C2729A f630b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2730a enumC2730a = new EnumC2730a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2729A.m756i(0L, 999999999L));
        NANO_OF_SECOND = enumC2730a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2730a enumC2730a2 = new EnumC2730a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2729A.m756i(0L, 86399999999999L));
        NANO_OF_DAY = enumC2730a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2730a enumC2730a3 = new EnumC2730a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2729A.m756i(0L, 999999L));
        MICRO_OF_SECOND = enumC2730a3;
        EnumC2730a enumC2730a4 = new EnumC2730a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2729A.m756i(0L, 86399999999L));
        MICRO_OF_DAY = enumC2730a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2730a enumC2730a5 = new EnumC2730a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2729A.m756i(0L, 999L));
        MILLI_OF_SECOND = enumC2730a5;
        EnumC2730a enumC2730a6 = new EnumC2730a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2729A.m756i(0L, 86399999L));
        MILLI_OF_DAY = enumC2730a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2730a enumC2730a7 = new EnumC2730a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2729A.m756i(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2730a7;
        EnumC2730a enumC2730a8 = new EnumC2730a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2729A.m756i(0L, 86399L));
        SECOND_OF_DAY = enumC2730a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2730a enumC2730a9 = new EnumC2730a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2729A.m756i(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2730a9;
        EnumC2730a enumC2730a10 = new EnumC2730a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2729A.m756i(0L, 1439L));
        MINUTE_OF_DAY = enumC2730a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2730a enumC2730a11 = new EnumC2730a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2729A.m756i(0L, 11L));
        HOUR_OF_AMPM = enumC2730a11;
        EnumC2730a enumC2730a12 = new EnumC2730a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2729A.m756i(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2730a12;
        EnumC2730a enumC2730a13 = new EnumC2730a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2729A.m756i(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2730a13;
        EnumC2730a enumC2730a14 = new EnumC2730a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2729A.m756i(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2730a14;
        EnumC2730a enumC2730a15 = new EnumC2730a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2729A.m756i(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2730a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2730a enumC2730a16 = new EnumC2730a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2729A.m756i(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2730a16;
        EnumC2730a enumC2730a17 = new EnumC2730a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2729A.m756i(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2730a17;
        EnumC2730a enumC2730a18 = new EnumC2730a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2729A.m756i(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2730a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2730a enumC2730a19 = new EnumC2730a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2729A.m755j(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2730a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2730a enumC2730a20 = new EnumC2730a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2729A.m755j(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2730a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2730a enumC2730a21 = new EnumC2730a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2729A.m756i(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2730a21;
        EnumC2730a enumC2730a22 = new EnumC2730a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2729A.m755j(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2730a22;
        EnumC2730a enumC2730a23 = new EnumC2730a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2729A.m756i(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2730a23;
        EnumC2730a enumC2730a24 = new EnumC2730a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2729A.m756i(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2730a24;
        EnumC2730a enumC2730a25 = new EnumC2730a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2729A.m756i(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2730a25;
        EnumC2730a enumC2730a26 = new EnumC2730a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2729A.m755j(1L, 999999999L, C0479C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2730a26;
        EnumC2730a enumC2730a27 = new EnumC2730a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2729A.m756i(-999999999L, 999999999L), "year");
        YEAR = enumC2730a27;
        EnumC2730a enumC2730a28 = new EnumC2730a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2729A.m756i(0L, 1L), "era");
        ERA = enumC2730a28;
        EnumC2730a enumC2730a29 = new EnumC2730a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2729A.m756i(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2730a29;
        EnumC2730a enumC2730a30 = new EnumC2730a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2729A.m756i(-64800L, 64800L));
        OFFSET_SECONDS = enumC2730a30;
        f628c = new EnumC2730a[]{enumC2730a, enumC2730a2, enumC2730a3, enumC2730a4, enumC2730a5, enumC2730a6, enumC2730a7, enumC2730a8, enumC2730a9, enumC2730a10, enumC2730a11, enumC2730a12, enumC2730a13, enumC2730a14, enumC2730a15, enumC2730a16, enumC2730a17, enumC2730a18, enumC2730a19, enumC2730a20, enumC2730a21, enumC2730a22, enumC2730a23, enumC2730a24, enumC2730a25, enumC2730a26, enumC2730a27, enumC2730a28, enumC2730a29, enumC2730a30};
    }

    private EnumC2730a(String str, int i, String str2, InterfaceC2754y interfaceC2754y, InterfaceC2754y interfaceC2754y2, C2729A c2729a) {
        this.f629a = str2;
        this.f630b = c2729a;
    }

    private EnumC2730a(String str, int i, String str2, InterfaceC2754y interfaceC2754y, InterfaceC2754y interfaceC2754y2, C2729A c2729a, String str3) {
        this.f629a = str2;
        this.f630b = c2729a;
    }

    public static EnumC2730a valueOf(String str) {
        return (EnumC2730a) Enum.valueOf(EnumC2730a.class, str);
    }

    public static EnumC2730a[] values() {
        return (EnumC2730a[]) f628c.clone();
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: a */
    public C2729A mo730a() {
        return this.f630b;
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: b */
    public boolean mo729b() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: c */
    public /* synthetic */ InterfaceC2740k mo728c(Map map, InterfaceC2740k interfaceC2740k, EnumC2716z enumC2716z) {
        return null;
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: d */
    public long mo727d(InterfaceC2740k interfaceC2740k) {
        return interfaceC2740k.mo738e(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: e */
    public boolean mo726e(InterfaceC2740k interfaceC2740k) {
        return interfaceC2740k.mo736i(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: f */
    public InterfaceC2739j mo725f(InterfaceC2739j interfaceC2739j, long j) {
        return interfaceC2739j.mo742b(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: g */
    public C2729A mo724g(InterfaceC2740k interfaceC2740k) {
        return interfaceC2740k.mo739d(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: h */
    public boolean mo723h() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    /* renamed from: i */
    public int m753i(long j) {
        return this.f630b.m764a(j, this);
    }

    /* renamed from: j */
    public long m752j(long j) {
        this.f630b.m763b(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f629a;
    }
}
