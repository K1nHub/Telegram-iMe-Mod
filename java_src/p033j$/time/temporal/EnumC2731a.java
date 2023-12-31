package p033j$.time.temporal;

import com.google.android.exoplayer2.C0485C;
import java.util.Map;
import p033j$.time.format.EnumC2717z;
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
public final class EnumC2731a implements InterfaceC2745o {
    public static final EnumC2731a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2731a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2731a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2731a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2731a AMPM_OF_DAY;
    public static final EnumC2731a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2731a CLOCK_HOUR_OF_DAY;
    public static final EnumC2731a DAY_OF_MONTH;
    public static final EnumC2731a DAY_OF_WEEK;
    public static final EnumC2731a DAY_OF_YEAR;
    public static final EnumC2731a EPOCH_DAY;
    public static final EnumC2731a ERA;
    public static final EnumC2731a HOUR_OF_AMPM;
    public static final EnumC2731a HOUR_OF_DAY;
    public static final EnumC2731a INSTANT_SECONDS;
    public static final EnumC2731a MICRO_OF_DAY;
    public static final EnumC2731a MICRO_OF_SECOND;
    public static final EnumC2731a MILLI_OF_DAY;
    public static final EnumC2731a MILLI_OF_SECOND;
    public static final EnumC2731a MINUTE_OF_DAY;
    public static final EnumC2731a MINUTE_OF_HOUR;
    public static final EnumC2731a MONTH_OF_YEAR;
    public static final EnumC2731a NANO_OF_DAY;
    public static final EnumC2731a NANO_OF_SECOND;
    public static final EnumC2731a OFFSET_SECONDS;
    public static final EnumC2731a PROLEPTIC_MONTH;
    public static final EnumC2731a SECOND_OF_DAY;
    public static final EnumC2731a SECOND_OF_MINUTE;
    public static final EnumC2731a YEAR;
    public static final EnumC2731a YEAR_OF_ERA;

    /* renamed from: c */
    private static final /* synthetic */ EnumC2731a[] f628c;

    /* renamed from: a */
    private final String f629a;

    /* renamed from: b */
    private final C2730A f630b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2731a enumC2731a = new EnumC2731a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2730A.m757i(0L, 999999999L));
        NANO_OF_SECOND = enumC2731a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2731a enumC2731a2 = new EnumC2731a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2730A.m757i(0L, 86399999999999L));
        NANO_OF_DAY = enumC2731a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2731a enumC2731a3 = new EnumC2731a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2730A.m757i(0L, 999999L));
        MICRO_OF_SECOND = enumC2731a3;
        EnumC2731a enumC2731a4 = new EnumC2731a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2730A.m757i(0L, 86399999999L));
        MICRO_OF_DAY = enumC2731a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2731a enumC2731a5 = new EnumC2731a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2730A.m757i(0L, 999L));
        MILLI_OF_SECOND = enumC2731a5;
        EnumC2731a enumC2731a6 = new EnumC2731a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2730A.m757i(0L, 86399999L));
        MILLI_OF_DAY = enumC2731a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2731a enumC2731a7 = new EnumC2731a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2730A.m757i(0L, 59L), "second");
        SECOND_OF_MINUTE = enumC2731a7;
        EnumC2731a enumC2731a8 = new EnumC2731a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2730A.m757i(0L, 86399L));
        SECOND_OF_DAY = enumC2731a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2731a enumC2731a9 = new EnumC2731a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2730A.m757i(0L, 59L), "minute");
        MINUTE_OF_HOUR = enumC2731a9;
        EnumC2731a enumC2731a10 = new EnumC2731a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2730A.m757i(0L, 1439L));
        MINUTE_OF_DAY = enumC2731a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2731a enumC2731a11 = new EnumC2731a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2730A.m757i(0L, 11L));
        HOUR_OF_AMPM = enumC2731a11;
        EnumC2731a enumC2731a12 = new EnumC2731a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2730A.m757i(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2731a12;
        EnumC2731a enumC2731a13 = new EnumC2731a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2730A.m757i(0L, 23L), "hour");
        HOUR_OF_DAY = enumC2731a13;
        EnumC2731a enumC2731a14 = new EnumC2731a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2730A.m757i(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2731a14;
        EnumC2731a enumC2731a15 = new EnumC2731a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2730A.m757i(0L, 1L), "dayperiod");
        AMPM_OF_DAY = enumC2731a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2731a enumC2731a16 = new EnumC2731a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2730A.m757i(1L, 7L), "weekday");
        DAY_OF_WEEK = enumC2731a16;
        EnumC2731a enumC2731a17 = new EnumC2731a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2730A.m757i(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2731a17;
        EnumC2731a enumC2731a18 = new EnumC2731a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2730A.m757i(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2731a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2731a enumC2731a19 = new EnumC2731a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2730A.m756j(1L, 28L, 31L), "day");
        DAY_OF_MONTH = enumC2731a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2731a enumC2731a20 = new EnumC2731a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2730A.m756j(1L, 365L, 366L));
        DAY_OF_YEAR = enumC2731a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2731a enumC2731a21 = new EnumC2731a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2730A.m757i(-365249999634L, 365249999634L));
        EPOCH_DAY = enumC2731a21;
        EnumC2731a enumC2731a22 = new EnumC2731a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2730A.m756j(1L, 4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2731a22;
        EnumC2731a enumC2731a23 = new EnumC2731a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2730A.m757i(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2731a23;
        EnumC2731a enumC2731a24 = new EnumC2731a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2730A.m757i(1L, 12L), "month");
        MONTH_OF_YEAR = enumC2731a24;
        EnumC2731a enumC2731a25 = new EnumC2731a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2730A.m757i(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2731a25;
        EnumC2731a enumC2731a26 = new EnumC2731a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2730A.m756j(1L, 999999999L, C0485C.NANOS_PER_SECOND));
        YEAR_OF_ERA = enumC2731a26;
        EnumC2731a enumC2731a27 = new EnumC2731a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2730A.m757i(-999999999L, 999999999L), "year");
        YEAR = enumC2731a27;
        EnumC2731a enumC2731a28 = new EnumC2731a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2730A.m757i(0L, 1L), "era");
        ERA = enumC2731a28;
        EnumC2731a enumC2731a29 = new EnumC2731a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2730A.m757i(Long.MIN_VALUE, Long.MAX_VALUE));
        INSTANT_SECONDS = enumC2731a29;
        EnumC2731a enumC2731a30 = new EnumC2731a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2730A.m757i(-64800L, 64800L));
        OFFSET_SECONDS = enumC2731a30;
        f628c = new EnumC2731a[]{enumC2731a, enumC2731a2, enumC2731a3, enumC2731a4, enumC2731a5, enumC2731a6, enumC2731a7, enumC2731a8, enumC2731a9, enumC2731a10, enumC2731a11, enumC2731a12, enumC2731a13, enumC2731a14, enumC2731a15, enumC2731a16, enumC2731a17, enumC2731a18, enumC2731a19, enumC2731a20, enumC2731a21, enumC2731a22, enumC2731a23, enumC2731a24, enumC2731a25, enumC2731a26, enumC2731a27, enumC2731a28, enumC2731a29, enumC2731a30};
    }

    private EnumC2731a(String str, int i, String str2, InterfaceC2755y interfaceC2755y, InterfaceC2755y interfaceC2755y2, C2730A c2730a) {
        this.f629a = str2;
        this.f630b = c2730a;
    }

    private EnumC2731a(String str, int i, String str2, InterfaceC2755y interfaceC2755y, InterfaceC2755y interfaceC2755y2, C2730A c2730a, String str3) {
        this.f629a = str2;
        this.f630b = c2730a;
    }

    public static EnumC2731a valueOf(String str) {
        return (EnumC2731a) Enum.valueOf(EnumC2731a.class, str);
    }

    public static EnumC2731a[] values() {
        return (EnumC2731a[]) f628c.clone();
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: a */
    public C2730A mo731a() {
        return this.f630b;
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: b */
    public boolean mo730b() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: c */
    public /* synthetic */ InterfaceC2741k mo729c(Map map, InterfaceC2741k interfaceC2741k, EnumC2717z enumC2717z) {
        return null;
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: d */
    public long mo728d(InterfaceC2741k interfaceC2741k) {
        return interfaceC2741k.mo739e(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: e */
    public boolean mo727e(InterfaceC2741k interfaceC2741k) {
        return interfaceC2741k.mo737i(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: f */
    public InterfaceC2740j mo726f(InterfaceC2740j interfaceC2740j, long j) {
        return interfaceC2740j.mo743b(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: g */
    public C2730A mo725g(InterfaceC2741k interfaceC2741k) {
        return interfaceC2741k.mo740d(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: h */
    public boolean mo724h() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    /* renamed from: i */
    public int m754i(long j) {
        return this.f630b.m765a(j, this);
    }

    /* renamed from: j */
    public long m753j(long j) {
        this.f630b.m764b(j, this);
        return j;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f629a;
    }
}
