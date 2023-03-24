package p034j$.time;
/* renamed from: j$.time.c */
/* loaded from: classes2.dex */
public enum EnumC2502c {
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
    private static final EnumC2502c[] f484a = values();

    /* renamed from: a */
    public static EnumC2502c m684a(int i) {
        if (i < 1 || i > 12) {
            throw new C2500a("Invalid value for MonthOfYear: " + i);
        }
        return f484a[i - 1];
    }
}
