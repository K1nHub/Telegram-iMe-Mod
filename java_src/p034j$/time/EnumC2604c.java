package p034j$.time;
/* renamed from: j$.time.c */
/* loaded from: classes2.dex */
public enum EnumC2604c {
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
    private static final EnumC2604c[] f487a = values();

    /* renamed from: a */
    public static EnumC2604c m670a(int i) {
        if (i < 1 || i > 12) {
            throw new C2602a("Invalid value for MonthOfYear: " + i);
        }
        return f487a[i - 1];
    }
}
