package p033j$.time;
/* renamed from: j$.time.c */
/* loaded from: classes2.dex */
public enum EnumC2730c {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;
    

    /* renamed from: a */
    private static final EnumC2730c[] f569a = values();

    /* renamed from: a */
    public static EnumC2730c m670a(int i) {
        if (i < 1 || i > 12) {
            throw new C2728a("Invalid value for MonthOfYear: " + i);
        }
        return f569a[i - 1];
    }
}
