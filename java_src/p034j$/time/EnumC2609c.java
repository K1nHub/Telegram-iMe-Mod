package p034j$.time;
/* renamed from: j$.time.c */
/* loaded from: classes2.dex */
public enum EnumC2609c {
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
    private static final EnumC2609c[] f487a = values();

    /* renamed from: a */
    public static EnumC2609c m670a(int i) {
        if (i < 1 || i > 12) {
            throw new C2607a("Invalid value for MonthOfYear: " + i);
        }
        return f487a[i - 1];
    }
}
